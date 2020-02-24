cask 'hammerspoon' do
  if MacOS.version <= :mavericks
    version '0.9.46'
    sha256 '20f7e81624b6f007d6fdd8944cab3d9ba48c36fd0b4f1405a590526b5d4859bc'
  else
    version '0.9.78'
    sha256 'a06a8a78c5fb43a72550d1162fa702a7f383b09ea638c44062f83026dcd2e5ff'
  end

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'https://www.hammerspoon.org/'

  auto_updates true

  app 'Hammerspoon.app'

  uninstall quit: 'org.hammerspoon.Hammerspoon'

  zap trash: [
               '~/.hammerspoon',
               '~/Library/Application Support/com.crashlytics/org.hammerspoon.Hammerspoon',
               '~/Library/Caches/org.hammerspoon.Hammerspoon',
               '~/Library/Preferences/org.hammerspoon.Hammerspoon.plist',
               '~/Library/Saved Application State/org.hammerspoon.Hammerspoon.savedState',
             ]
end
