cask 'ieasemusic' do
  version '1.1.4'
  sha256 'ad16f4d4777e95520d6b749ad8fa83e225ca366e50ef65e2f41200561c5bba92'

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/ieaseMusic/releases.atom',
          checkpoint: '62db655e1d0e4a28a289f4c975508114bf788b0b18644631d48991ea5aa3ea08'
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
