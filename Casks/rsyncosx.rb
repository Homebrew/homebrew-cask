cask 'rsyncosx' do
  version '4.4.0'
  sha256 '7b437a9a4013045e57b49ea05ed871acf5db03c7029b49d77824e741d59d1d65'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '60104f6a455ac428eb8302feece8d8dc2268cf2d0f51683d0b773d05bcbc8892'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
