cask 'hammerspoon' do
  version '0.9.51'
  sha256 'a01f0b7850180eff7a0bbc03802b7bdb5a4390695ac15ac09123de9634cb2db7'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'd275fdd88163a183ec274d828ffa2992229d1da955dd31739b1a1ac382606af4'
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
