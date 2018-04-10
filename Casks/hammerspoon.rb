cask 'hammerspoon' do
  if MacOS.version <= :mavericks
    version '0.9.46'
    sha256 '20f7e81624b6f007d6fdd8944cab3d9ba48c36fd0b4f1405a590526b5d4859bc'
  else
    version '0.9.64'
    sha256 '65c84c885fc905615c350e42ee7916ca856b34a215f0b43d82cf2ccf0822602e'
  end

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'c9279f2098d3c385000583f5ea9f28bc76836f3169446aa2375cb23664aa9b8b'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'

  auto_updates true
  accessibility_access true

  app 'Hammerspoon.app'

  uninstall quit:       'org.hammerspoon.Hammerspoon',
            login_item: 'Hammerspoon'

  zap trash: [
               '~/.hammerspoon',
               '~/Library/Application Support/com.crashlytics/org.hammerspoon.Hammerspoon',
               '~/Library/Caches/org.hammerspoon.Hammerspoon',
               '~/Library/Preferences/org.hammerspoon.Hammerspoon.plist',
               '~/Library/Saved Application State/org.hammerspoon.Hammerspoon.savedState',
             ]
end
