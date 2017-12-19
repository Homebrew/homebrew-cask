cask 'rsyncosx' do
  version '4.9.2'
  sha256 'e9ac68a05c8c61a6f9c9d2cbb70f405670f8c29bdd89dbea0288514a1038611e'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: 'f9e657e4e0fc17e50efd0e67ff3ed4efc1f9e0c02736d817d736666e2294adbb'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
