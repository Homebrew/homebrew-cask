cask 'journey' do
  version '2.8.1'
  sha256 '4940567ff9eee2e8daa1d60ea047c05b0fc21c04690dcc4fa468d9ae7f2d5c9c'

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
