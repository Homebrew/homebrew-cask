cask 'keep' do
  version '1.0.0'
  sha256 '391724f79b91eeddb07e47460be515cb6b343678517d099de86eaca3d23d831f'

  url "https://github.com/tmcinerney/keep/releases/download/v#{version}/keep.v#{version}.zip"
  appcast 'https://github.com/tmcinerney/keep/releases.atom',
          checkpoint: 'b8ba6378ffa4f4c59e425cf39819f3c607c87dad5c1aa8652b02dbf25ef43290'
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
