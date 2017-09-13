cask 'rsyncosx' do
  version '4.5.1'
  sha256 'ad4714156e6a2e06f761e3e0067e9c28506dad8e2fc51cdd775959e1ad3ed3c8'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: 'dbf7c2713d1b148a5d9a4d767bed7c1b2767f456cbc4899e8c368f4fda25f728'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
