cask 'klatexformula' do
  version '3.3.0beta'
  sha256 '7b1ac67dec83010acce4da00d1a10c6bab3921e9eedb7e88322f8b3bf987c104'

  url "http://downloads.sourceforge.net/project/klatexformula/klatexformula/klatexformula-#{version}/klatexformula-#{version}-macosx.dmg"
  name 'KLatexFormula'
  homepage 'http://klatexformula.sourceforge.net'
  license :gpl

  app 'KLatexFormula.app'
end
