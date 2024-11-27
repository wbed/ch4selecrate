x = categorical({'TiO_2';'Ag/TiO_2'});
y = [0.72; 25.25];
z = [44; 86];
nil = [0; 0];

colororder({'b','r'})
yyaxis left
a = bar(x, [y nil], 'grouped', 'b')
ylabel('CH_4 Evolution Rate (μmolg^-^1h^-^1)')
xtips1 = a(1).XEndPoints;
ytips1 = a(1).YEndPoints;
labels1 = string(a(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center','VerticalAlignment','bottom')

yyaxis right
b = bar(x, [nil z], 'grouped', 'r')
ylabel('CH_4 Selectivity (%)')
xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'HorizontalAlignment','center','VerticalAlignment','bottom')

f = gcf;
exportgraphics(f, 'tio2vsagtio2.png','Resolution',450);