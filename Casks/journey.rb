cask 'journey' do
  version '2.6.3'
  sha256 'e3d501b1cbb7dd342544e2745053b45a5b59eae560c1fbe5dd1721fca6d0b53b'

  # github.com/2-App-Studio/journey-releases was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/2-App-Studio/journey-releases/releases.atom',
          checkpoint: '53b3fe139d98e53790678aa4e5c1c1b77840e99cac4c76954b95cf11299817c1'
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
