cask 'journey' do
  version '2.5.1'
  sha256 '09e02aa10e922e024d4c84b2185058aae8bee2e2bc98c1abe73b02ca9700db8f'

  # github.com/2-App-Studio/journey-releases was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/2-App-Studio/journey-releases/releases.atom',
          checkpoint: '66ff39565fcfe926c0d2cd96eeded20a446ffbee931d5ed71ac531895c2a7c21'
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
