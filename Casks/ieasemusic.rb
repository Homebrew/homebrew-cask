cask 'ieasemusic' do
  version '1.0.6'
  sha256 'db42a8034bc5d92f754cd127e8a6db4b2d358f3eaa7c784a4056ed6b418f8238'

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/ieaseMusic/releases.atom',
          checkpoint: '9b2cb3c67265bcdd121c4ce3a07d4737ca51b3bd2eb4ed8c40ea52ca9c735a91'
  name 'ieaseMusic'
  homepage 'https://github.com/trazyn/ieaseMusic'

  app 'ieaseMusic.app'

  zap trash: [
               '~/Library/Application Support/ieasemusic',
               '~/Library/Preferences/gh.trazyn.ieasemusic.helper.plist',
               '~/Library/Preferences/gh.trazyn.ieasemusic.plist',
               '~/Library/Saved Application State/gh.trazyn.ieasemusic.savedState',
             ]
end
