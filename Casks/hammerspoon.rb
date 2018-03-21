cask 'hammerspoon' do
  if MacOS.version <= :mavericks
    version '0.9.46'
    sha256 '20f7e81624b6f007d6fdd8944cab3d9ba48c36fd0b4f1405a590526b5d4859bc'
  else
    version '0.9.60'
    sha256 '70bc88973af7ab8f12d64e7408a94d59592e96518f67cb385bddef18ba14c4e9'
  end

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'd74e7c78815ecf07071012f401f902f319fcfaef364ebbbb22b832b96419a061'
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
