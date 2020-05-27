cask 'rsyncosx' do
  version '6.3.0'
  sha256 '29490d351ac673355a08f6cdf229dbd54851206f93f329dda98278fd4a5bd90f'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.#{version}.dmg"
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
