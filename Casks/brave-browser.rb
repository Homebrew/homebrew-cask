cask 'brave-browser' do
  version '0.55.20'
  sha256 'a922197e96d4a4a499a708f48757a60db7ff750ca358922aec83185fd5eb4bc2'

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
