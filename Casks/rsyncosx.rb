cask 'rsyncosx' do
  version '4.3.0'
  sha256 '4730280c48329157383577288ef8b3b8c820af66304a63541f4545d61dd6cf6c'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '153df6d14205becd264b7177d88b4bd8a4afd8522c855696bcb8df8ece845f3f'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
