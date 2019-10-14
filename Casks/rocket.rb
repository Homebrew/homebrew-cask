cask 'rocket' do
  version '1.6.1,62'
  sha256 '151d25f53762f955451bfb921ba67492dd1a03e44e925e95884e994ce636ebae'

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.after_comma}.dmg"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Rocket.xml'
  name 'Rocket'
  homepage 'https://matthewpalmer.net/rocket/'

  app 'Rocket.app'

  zap trash: [
               '~/Library/Application Support/Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
