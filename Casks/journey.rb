cask 'journey' do
  version '2.12.4'
  sha256 '34e7368dfd6cf731e939dd889055f89c4f699890d08727106aefd2fa6cfeb1bf'

  # github.com/2-App-Studio/journey-releases was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-#{version}.dmg"
  appcast 'https://github.com/2-App-Studio/journey-releases/releases.atom'
  name 'Journey'
  homepage 'https://2appstudio.com/journey/'

  app 'Journey.app'

  zap trash: [
               "~/Library/Application Support/Journey#{version.major}",
               "~/Library/Preferences/com.journey.mac#{version.major}.helper.plist",
               "~/Library/Preferences/com.journey.mac#{version.major}.plist",
               "~/Library/Saved Application State/com.journey.mac#{version.major}.savedState",
             ]
end
