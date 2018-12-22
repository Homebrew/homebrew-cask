cask 'brave-browser' do
  version '0.58.16'
  sha256 '1f1ccdb51a1a4b4b759ed2f7efc8437eb7f6ee4f2615ddcce22e2627a9e2ba3a'

  # github.com/brave/brave-browser was verified as official when first introduced to the cask
  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave Browser.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
