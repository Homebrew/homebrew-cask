cask 'rsyncosx' do
  version '5.3.1'
  sha256 '3944712f0ad2dafe4ad9293c9670fe4cc533b0df54ec58a349ef23a09a43a5b7'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: 'b6a126ea4285896c362b9054573db3c010d416c07f1c0485ad0fd75e772b73fb'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
