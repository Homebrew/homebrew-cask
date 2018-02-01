cask 'journey' do
  version '2.4.4'
  sha256 'abe1238564ba50917c469af770058ece788f066fdef8cc8dc0ac127a14779197'

  # github.com/2-App-Studio/journey-releases was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/2-App-Studio/journey-releases/releases.atom',
          checkpoint: 'f866b4e0ca49ffd0ac3982c724634a26a9e0809b30b01d4a7d7b5caef40ed62e'
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
