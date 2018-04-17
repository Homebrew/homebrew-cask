cask 'panini' do
  version '0.71.104'
  sha256 '2a2836b0035bc1be8ada1e07138c72276a89624321dbfaa475fc4cd88fffe544'

  url "https://downloads.sourceforge.net/pvqt/Panini-#{version}B-mac.dmg"
  appcast 'https://sourceforge.net/projects/pvqt/rss',
          checkpoint: 'ff8c509bfe4ac83c5d4482b500643bb34d877b063fdffa33ee581bc01c854112'
  name 'Panini'
  homepage 'https://sourceforge.net/projects/pvqt/'

  app 'Panini.app'
end
