cask 'brave-browser' do
  version '80.1.5.123,105.123'
  sha256 'f0c13eeee009a69059a8e9f1b35a16f17c8016d5e192a72e6083585c15ad4b36'

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
