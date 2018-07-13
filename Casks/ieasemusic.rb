cask 'ieasemusic' do
  version '1.2.5'
  sha256 '03c7f631f80305c968fb6d844d2ecf00c551aa33e18cd5972c979f346aa8a48c'

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
