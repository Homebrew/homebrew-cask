cask 'rocket' do
  version '1.7.2,67'
  sha256 '4c7be3c0873df53e2743e76a051597b099affbd20824e0b6b32d497bd85db052'

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.after_comma}.dmg"
  appcast 'https://macrelease.matthewpalmer.net/distribution/appcasts/rocket.xml'
  name 'Rocket'
  homepage 'https://matthewpalmer.net/rocket/'

  auto_updates true

  app 'Rocket.app'

  uninstall quit: 'net.matthewpalmer.Rocket'

  zap trash: [
               '/Users/Shared/Rocket',
               '~/Library/Application Support/Rocket',
               '~/Library/Caches/net.matthewpalmer.Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
