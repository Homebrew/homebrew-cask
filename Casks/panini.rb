cask 'panini' do
  version '0.71.104'
  sha256 '2a2836b0035bc1be8ada1e07138c72276a89624321dbfaa475fc4cd88fffe544'

  url "https://downloads.sourceforge.net/pvqt/Panini-#{version}B-mac.dmg"
  appcast 'https://sourceforge.net/projects/pvqt/rss'
  name 'Panini'
  homepage 'https://sourceforge.net/projects/pvqt/'

  app 'Panini.app'
end
