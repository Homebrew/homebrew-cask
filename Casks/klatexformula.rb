cask 'klatexformula' do
  version '3.3.0beta'
  sha256 '7b1ac67dec83010acce4da00d1a10c6bab3921e9eedb7e88322f8b3bf987c104'

  url "http://downloads.sourceforge.net/project/klatexformula/klatexformula/klatexformula-#{version}/klatexformula-#{version}-macosx.dmg"
  appcast 'http://sourceforge.net/projects/klatexformula/rss',
          checkpoint: '26903d4e3edba1a44ffa69ded4012a1a4679522493fcd8b79b54382241b28b86'
  name 'KLatexFormula'
  homepage 'http://klatexformula.sourceforge.net'
  license :gpl

  app 'KLatexFormula.app'
end
