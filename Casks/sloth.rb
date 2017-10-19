cask 'sloth' do
  version '2.0'
  sha256 '7b2aa0e5234e862ed8b9f2a7640e74d170030f56dd27e3419fcd7252e2d7a6f4'

  url 'http://sveinbjorn.org/files/software/sloth.zip'
  appcast 'http://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: 'cd8eaa41fa7b240923196574b5a5afa74842fbffd5e26aaa40a14187a45df469'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'

  zap delete: '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
      trash:  '~/Library/Preferences/org.sveinbjorn.Sloth.plist'
end
