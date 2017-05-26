cask 'rsyncosx' do
  version '4.3.0'
  sha256 '52337b1e918c6cedabe2c098b77c768b7b706d49c006c28e5f3d0c571ed90433'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '7bd1f80ca4ae6bc48c85cef27671d29c5faccec2380f821d7805f5ae55d8a4ee'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
