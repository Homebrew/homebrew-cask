cask 'rsyncosx' do
  version '5.6.2'
  sha256 'b22f96cbb05345cc3b345b4a5482a727a448ce7418bcaa38eb85c625e26f2770'

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
