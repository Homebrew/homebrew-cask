cask 'rsyncosx' do
  version '4.9.6'
  sha256 'ed4970ff6a985f31145c3b08d06c9445a793021e9f1219d83c1e53dc4c926fa1'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: 'eb9d4ad5e6bed25387745715eb339b8c4cf485a727c7021c5eb7a419ab2c5133'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
