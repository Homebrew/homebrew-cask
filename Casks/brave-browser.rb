cask 'brave-browser' do
  version '0.65.120'
  sha256 '5fe6f54d918fce8bfe8a394ad70cb45fe31ce2617f2de4f4e0155e22c770260f'

  # github.com/brave/brave-browser was verified as official when first introduced to the cask
  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true

  app 'Brave Browser.app'

  zap trash: [
               '~/Library/Application Support/BraveSoftware/Brave-Browser',
               '~/Library/Preferences/com.brave.Browser.plist',
               '~/Library/Saved Application State/com.brave.Browser.savedState',
             ]
end
