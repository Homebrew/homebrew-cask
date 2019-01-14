cask 'brave-browser' do
  version '0.58.21'
  sha256 'bf8e2edb0b0101a0bf9f5a92dd1a6ed398edede7722c9a37ee37bbbb3a1bc145'

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
