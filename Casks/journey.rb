cask 'journey' do
  version '2.3.0'
  sha256 'e6db687575a582c5fb8e7ef4eb7cc1b4bff8434ec7b81e64caa90d59c6ad1d20'

  # github.com/2-App-Studio/journey-releases was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/2-App-Studio/journey-releases/releases.atom',
          checkpoint: 'ecc94c671d71453cb05209e2e86b0d8984cdba5df8419a4039907f318af9853a'
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
