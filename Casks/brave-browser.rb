cask 'brave-browser' do
  version '0.68.141'
  sha256 '81a323c93ce6e0ed2ae0d012ab55b104f8873290d50aaf58521f7a154cd2fd18'

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
