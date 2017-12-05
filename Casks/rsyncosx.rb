cask 'rsyncosx' do
  version '4.9.1'
  sha256 '099d0b6c01b99b9e9a33d7428008b937fe8227a5eb21d34c79b1ecdcf3965519'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: 'e0051f20e9fca44ed3c11f2091631fb2759431053d5944f2c07b02ff2a689515'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
