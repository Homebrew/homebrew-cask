cask 'journey' do
  version '2.13.1'
  sha256 '633da9723b036b49f3f5c1d9196da4550f3772f87f8c4b217f3a272de1202a12'

  # github.com/2-App-Studio/journey-releases was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-#{version}.dmg"
  appcast 'https://github.com/2-App-Studio/journey-releases/releases.atom'
  name 'Journey'
  homepage 'https://2appstudio.com/journey/'

  auto_updates true

  app 'Journey.app'

  zap trash: [
               "~/Library/Application Support/Journey#{version.major}",
               "~/Library/Preferences/com.journey.mac#{version.major}.helper.plist",
               "~/Library/Preferences/com.journey.mac#{version.major}.plist",
               "~/Library/Saved Application State/com.journey.mac#{version.major}.savedState",
             ]
end
