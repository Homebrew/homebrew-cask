cask 'rsyncosx' do
  version '4.2.5'
  sha256 '1bdcbf2a288c48859f8d0172046e7318d5025d4e356b87ebfb2f39658beffd0b'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '92ca942e1fcf21f10985a0ae986cc5691d08e87cec99a51034a82e8c1b118e81'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
