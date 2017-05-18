cask 'rsyncosx' do
  version '4.3.0'
  sha256 '52337b1e918c6cedabe2c098b77c768b7b706d49c006c28e5f3d0c571ed90433'

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
