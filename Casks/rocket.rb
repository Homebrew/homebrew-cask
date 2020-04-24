cask 'rocket' do
  version '1.7.3,68'
  sha256 '58db49ed05a0f4cbebe39c0f8dc9f0287133d4383321b1a8a8eeb5667533beda'

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
