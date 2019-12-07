cask 'menubar-stats' do
  version '3.0'
  sha256 '2e4987f5479a20c1279612f32a3d2a77f531e83106105ca91bfd83215417f621'

  url 'https://seense.com/menubarstats/updateapp/mbs.zip'
  appcast 'https://www.seense.com/menubarstats/updateapp/appcast.xml'
  name 'MenuBar Stats'
  homepage 'https://seense.com/menubarstats/'

  depends_on macos: '>= :sierra'

  app 'MenuBar Stats.app'
end
