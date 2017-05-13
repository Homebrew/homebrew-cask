cask 'black-screen' do
  version '0.2.144'
  sha256 '518cb4d2825b42cb5f0b2387f73c0b101c6d85e155005ff8ce5ffdb41af1fd78'

  url "https://github.com/vshatskyi/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/vshatskyi/black-screen/releases.atom',
          checkpoint: '8cd539e21d411e64fe0e4f64be52cbcaccc4ee8b1bc1d61f57b694779ca20850'
  name 'Black Screen'
  homepage 'https://github.com/vshatskyi/black-screen'

  app 'Black Screen.app'

  zap delete: [
                '~/Library/Application Support/Black Screen',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl',
                '~/Library/Preferences/com.github.shockone.black-screen.helper.plist',
                '~/Library/Preferences/com.github.shockone.black-screen.plist',
                '~/Library/Saved Application State/com.github.shockone.black-screen.savedState',
              ]
end
