cask 'noraswitch' do
  version '1.0.1'
  sha256 '4027f96ad1ad2f95720eefb72a02e3d9cabd67558074fca515275a9c7205a224'

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
