cask 'panini' do
  version '0.71.104'
  sha256 '2a2836b0035bc1be8ada1e07138c72276a89624321dbfaa475fc4cd88fffe544'

  url "https://downloads.sourceforge.net/pvqt/Panini-#{version}B-mac.dmg"
  appcast 'https://sourceforge.net/projects/pvqt/rss',
          checkpoint: '2ab914ba93251d1c0d480b940da16e2f3c7b328c7ca8158d8bbcb1535c990e47'
  name 'Panini'
  homepage 'https://sourceforge.net/projects/pvqt/'

  app 'Panini.app'
end
