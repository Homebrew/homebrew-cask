cask 'rsyncosx' do
  version '4.4.6'
  sha256 '104e488c979645b7cca8a976603a39684df0e4c9d69dfaa0edb672f6a3116bd9'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '1e219dda6cee2f2953d067c49c008809e3c9979cadc2a7b9ce2f2138b174725a'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
