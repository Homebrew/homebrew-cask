cask 'rsyncosx' do
  version '5.2.1'
  sha256 '1d7926ea5e5d1ac7c7fb1c5975dad35943206efcdb8dd98ba913901f9adf0082'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: 'f22a306df4ecf7756ab0bbb7e03bcfd9a09c1176691d47ef51de607b033e132a'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
