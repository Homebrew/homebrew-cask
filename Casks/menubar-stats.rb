cask 'menubar-stats' do
  version '3.2.1'
  sha256 '8fc7a2487973f4912fbc3750e1f012132445fbbc9df30f7faa09d1ac01270428'

  url 'https://seense.com/menubarstats/updateapp/mbs.zip'
  appcast 'https://www.seense.com/menubarstats/updateapp/appcast.xml'
  name 'MenuBar Stats'
  homepage 'https://seense.com/menubarstats/'

  depends_on macos: '>= :sierra'

  app 'MenuBar Stats.app'
end
