cask 'sloth' do
  version '2.7'
  sha256 'fdcbfd025bd50910e62c63f6464ddf40d90b75caed1a4a95654a49cc1b0f2ef1'

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
