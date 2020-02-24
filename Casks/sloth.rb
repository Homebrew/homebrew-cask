cask 'sloth' do
  version '2.8.1'
  sha256 '3596507018a6321226863862bd4377ac388dffdf54ebce1ace50d87869114c0e'

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  auto_updates true

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
