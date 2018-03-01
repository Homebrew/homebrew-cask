cask 'sloth' do
  version '2.1'
  sha256 '9f55d880ff8b054245b4d8c8f175da45a17831f9c7744c4ffad241c61f24f62e'

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: '9645898b8502aebd19427ef24549d211f6cb72ff5f7a3fe64099b9351620940d'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
