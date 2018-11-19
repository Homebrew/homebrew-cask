cask 'rsyncosx' do
  version '5.5.7'
  sha256 '76b20173d5113599e79ddb12b23a334b021e429e8e68a3186009f8c9a7d2df14'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
