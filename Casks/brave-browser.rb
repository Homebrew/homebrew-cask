cask 'brave-browser' do
  version '79.1.2.41,102.41'
  sha256 '43eca7a3a06bf3262829e40ab718018d49b2c06bacb74ccb95e33df100051857'

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser.dmg"
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
