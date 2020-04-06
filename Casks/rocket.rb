cask 'rocket' do
  version '1.7,65'
  sha256 'f61c4643955e621abc587b7855ea517a36d47698308ff531ecbba9a1c835d694'

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
