cask 'klatexformula' do
  version '4.0.0'
  sha256 '2204da5aef0e30a3a4fd4d4e8d372a9a139589b99c12254c6f30f2553f1f0d94'

  url "https://downloads.sourceforge.net/klatexformula/klatexformula/klatexformula-#{version}/klatexformula-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/klatexformula/rss?path=/klatexformula'
  name 'KLatexFormula'
  homepage 'http://klatexformula.sourceforge.net/'

  app 'klatexformula.app'
end
