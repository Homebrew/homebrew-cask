cask 'sloth' do
  version '2.5'
  sha256 '92ee4a26b5347be2276f3807552f121a5a25f95801bea3751d63e322e33fef36'

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
