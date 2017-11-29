cask 'rsyncosx' do
  version '4.9.0'
  sha256 '786211087a427e1162157ef13a245a3c7b99be4e11e6651ecc041d99a79de1b2'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '63ad7be4c92e6c594a9d372ad6e790973769c31bb3dca4b680dbf349dc27ed69'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
