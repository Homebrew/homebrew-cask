cask 'journey' do
  version '2.10.2'
  sha256 'dd4355c2787d366ba690b9a6c247e163ee9058b9fa5bd3a7faf4ce7c6ef62653'

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
