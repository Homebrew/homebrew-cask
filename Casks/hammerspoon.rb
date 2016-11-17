cask 'hammerspoon' do
  version '0.9.49'
  sha256 '771b55d93db25ece9f2790b83b49324bf3656ff3f5f000c4366f9da18d9f385e'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'a4e6211d15b78f4b30474bd513abd93aa1eeda87e40f78201c7b61f780ff100d'
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
