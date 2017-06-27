cask 'rsyncosx' do
  version '4.4.0'
  sha256 '7b437a9a4013045e57b49ea05ed871acf5db03c7029b49d77824e741d59d1d65'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '8ef30e93f33e44d828fd9aeb7b0b9a2986f2f422cf3ead479bfcbf989ff325bf'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
