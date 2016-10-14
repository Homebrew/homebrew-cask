cask 'hammerspoon' do
  version '0.9.48'
  sha256 '2acc3a53ffa9521c126b40a58f1ba2d3c3ca9a2133c9e255a338862a738b89b4'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'c8b710dc6d24ffce2cbb1b95c4953f8479a7299762c8a6a2d4cddda066bada32'
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
