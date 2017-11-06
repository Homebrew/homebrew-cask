cask 'keep' do
  version '0.4.0'
  sha256 'e7a750deb250f21ef8b0e11bb01c62299d1574779bcfc83d74c5e238f1e40889'

  url "https://github.com/tmcinerney/keep/releases/download/v#{version}/keep.v#{version}.zip"
  appcast 'https://github.com/tmcinerney/keep/releases.atom',
          checkpoint: 'dfbb63243f9d2c22b82e0b9fca0b5c0c0956be55feb19e77b341d0de3662f0a7'
  name 'Keep'
  homepage 'https://github.com/tmcinerney/keep/'

  app 'Keep.app'

  uninstall signal: [
                      ['TERM', 'com.electron.keep'],
                      ['TERM', 'com.electron.keep.helper'],
                    ]

  zap delete: [
                '~/Library/Caches/com.electron.keep',
                '~/Library/Saved Application State/com.electron.keep.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Keep',
                '~/Library/Preferences/com.electron.keep.plist',
                '~/Library/Preferences/com.electron.keep.helper.plist',
              ]
end
