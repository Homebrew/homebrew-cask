cask 'panini' do
  version '0.71.104'
  sha256 '2a2836b0035bc1be8ada1e07138c72276a89624321dbfaa475fc4cd88fffe544'

  url "http://downloads.sourceforge.net/sourceforge/pvqt/Panini-#{version}B-mac.dmg"
  name 'Panini'
  homepage 'http://sourceforge.net/projects/pvqt/'
  license :gpl

  app 'Panini.app'
end
