cask 'rocket' do
  version '1.6.2,64'
  sha256 'bdf1bfcd8fb5cbd04896f006624ea44d464cfff252a16123f83643831cbe280e'

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.after_comma}.dmg"
  appcast 'https://macrelease.matthewpalmer.net/distribution/appcasts/rocket.xml'
  name 'Rocket'
  homepage 'https://matthewpalmer.net/rocket/'

  auto_updates true

  app 'Rocket.app'

  zap trash: [
               '~/Library/Application Support/Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
