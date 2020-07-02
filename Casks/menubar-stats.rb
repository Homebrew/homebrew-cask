cask 'menubar-stats' do
  version '3.3'
  sha256 '1735a81fe773e2476b83fb8440f07739e46f4a57f844871482231e37886ef9e4'

  url 'https://seense.com/menubarstats/updateapp/mbs.zip'
  appcast 'https://www.seense.com/menubarstats/updateapp/appcast.xml'
  name 'MenuBar Stats'
  homepage 'https://seense.com/menubarstats/'

  depends_on macos: '>= :sierra'

  app 'MenuBar Stats.app'
end
