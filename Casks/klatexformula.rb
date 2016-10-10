cask 'klatexformula' do
  version '3.3.0beta'
  sha256 '7b1ac67dec83010acce4da00d1a10c6bab3921e9eedb7e88322f8b3bf987c104'

  url "https://downloads.sourceforge.net/klatexformula/klatexformula/klatexformula-#{version}/klatexformula-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/klatexformula/rss?path=/klatexformula',
          checkpoint: 'd03dfb386990dae34c456202e67d3d0976ef346c05a59e8c0c3c68a37d05ad2d'
  name 'KLatexFormula'
  homepage 'http://klatexformula.sourceforge.net'

  app 'KLatexFormula.app'
end
