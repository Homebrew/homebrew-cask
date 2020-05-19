cask 'rsyncosx' do
  version '6.2.6'
  sha256 'bfd6f4d62d8540b9c35ba0e51f2065e30eaf12c776487bbcb0b1b76326a6d6cf'

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
