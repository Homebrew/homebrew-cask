cask 'robofont' do
  version '1.8.1,1612102134'
  sha256 '923b0d7f72a4e155e86fc9afa1e657dc240662d7470f5d93162b13c2359dd936'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  appcast 'http://robofont.com/downloads/',
          checkpoint: '7aedb4426631691f11efb84e3bd2169e6bff8eebaffa3d33d2ddc74ef784cdc1'
  name 'RoboFont'
  homepage 'https://doc.robofont.com/'

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
