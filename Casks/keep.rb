cask 'keep' do
  version '0.4.0'
  sha256 :no_check

  url "https://github.com/tmcinerney/keep/releases/download/v#{version}/keep.v#{version}.zip"
  appcast 'https://github.com/tmcinerney/keep/releases.atom',
          checkpoint: 'dfbb63243f9d2c22b82e0b9fca0b5c0c0956be55feb19e77b341d0de3662f0a7'
  name 'Keep'
  homepage 'https://github.com/tmcinerney/keep/'

  auto_updates true

  app 'Keep.app'

  uninstall quit: 'com.electron.keep'

  zap delete: '~/Library/Caches/com.electron.keep',
      trash:  [
                '~/Library/Application Support/Keep',
                '~/Library/Saved Application State/com.electron.keep.savedState',
                '~/Library/Preferences/com.electron.keep.plist',
                '~/Library/Preferences/com.electron.keep.helper.plist',
              ]
end
