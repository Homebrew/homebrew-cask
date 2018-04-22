cask 'journey' do
  version '2.6.6'
  sha256 '9d7f99ca53f7c22ad97c804674bebb21df960db7a9364e99f5eaee1e749386cc'

  # github.com/2-App-Studio/journey-releases was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/2-App-Studio/journey-releases/releases.atom',
          checkpoint: '201e76435d2d0dbc4dd48ec4a84b1e1521f79f38eba14421e2608a8cf58c4400'
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
