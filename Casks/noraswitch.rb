cask 'noraswitch' do
  version '1.0.0'
  sha256 '974fdf4a2d3920b85fadf22e238442414081d332ab41b090718785af9cc9d6e4'

  url "https://noraswitch.com/dmg/noraSwitch%20#{version}.dmg"
  appcast 'https://noraswitch.com/appcast.xml'
  name 'noraSwitch'
  homepage 'https://noraswitch.com/'

  depends_on macos: '>= :mojave'

  app 'noraSwitch.app'

  uninstall quit:      'com.trrn.noraSwitch',
            launchctl: 'com.trrn.noraSwitch-LaunchAtLoginHelper'

  zap trash: [
               '~/Library/Application Support/com.trrn.noraSwitch',
               '~/Library/Caches/com.trrn.noraSwitch',
               '~/Library/Preferences/com.trrn.noraSwitch.plist',
             ]
end
