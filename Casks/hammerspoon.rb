cask 'hammerspoon' do
  version '0.9.53'
  sha256 '4f5b0a9e44e55af44b76971fefa254b8168cbcc98bb69c1a2d60c4bfb42e77ae'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'd3f5f870e9959219d5be5bd4ebe127042ac131f56e11abbecae83fa1f4af9240'
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
