cask 'sloth' do
  version '2.0'
  sha256 '7b2aa0e5234e862ed8b9f2a7640e74d170030f56dd27e3419fcd7252e2d7a6f4'

  url 'https://sveinbjorn.org/files/software/sloth.zip'
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: 'cd8eaa41fa7b240923196574b5a5afa74842fbffd5e26aaa40a14187a45df469'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
