cask 'ieasemusic' do
  version '1.2.6'
  sha256 '8f8442a4fa514760358005e719f221d61e0b52fb09add17e006ef56c6590d7e1'

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/ieaseMusic/releases.atom'
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
