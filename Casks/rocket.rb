cask 'rocket' do
  version '1.7.1,66'
  sha256 '168ed756985547453944008760c4d0470256bea399f06c87fbb5dbc41f25920a'

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
