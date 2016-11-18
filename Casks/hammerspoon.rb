cask 'hammerspoon' do
  version '0.9.50'
  sha256 '39c8384fa9180c4e20930c0e6d1574b4e8a4a74caa3a91bb3e2c898db1deef0f'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'e211a0452b72c4172421ce09abe76f2ffa4bef48b1205d435f37ce9757118fca'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'

  auto_updates true
  accessibility_access true

  app 'Hammerspoon.app'

  uninstall quit:       'org.hammerspoon.Hammerspoon',
            login_item: 'Hammerspoon'

  zap delete: [
                '~/.hammerspoon',
                '~/Library/Application Support/com.crashlytics/org.hammerspoon.Hammerspoon',
                '~/Library/Caches/org.hammerspoon.Hammerspoon',
                '~/Library/Preferences/org.hammerspoon.Hammerspoon.plist',
                '~/Library/Saved Application State/org.hammerspoon.Hammerspoon.savedState',
              ]
end
