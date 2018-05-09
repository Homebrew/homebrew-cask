cask 'ieasemusic' do
  version '1.1.5'
  sha256 '08384fb76bf2078edd268a41398e86b49d632de62161483d55305ade584b4de8'

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/ieaseMusic/releases.atom',
          checkpoint: 'f3739942aa0582a5703ad87c4262fa4b2b016b9c51c5f581f41f3c7e41856e23'
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
