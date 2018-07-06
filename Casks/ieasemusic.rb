cask 'ieasemusic' do
  version '1.2.2'
  sha256 'f0d1565715eba6e72cb75dfbd4338476e7fbfd83b163aca9567e36cefa26206f'

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
