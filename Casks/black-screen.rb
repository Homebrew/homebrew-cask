cask 'black-screen' do
  version '0.2.146'
  sha256 '0ca944f197f424da891e47ad67756da85fe85e8c45d40dc9ece8949201c13597'

  url "https://github.com/railsware/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/railsware/black-screen/releases.atom',
          checkpoint: '7d15a0097255494bc7c207ac9efd95c633f9874dea7c7bcea6424cf0a5bc4108'
  name 'Black Screen'
  homepage 'https://github.com/railsware/black-screen'

  app 'Black Screen.app'

  zap delete: [
                '~/Library/Application Support/Black Screen',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl',
                '~/Library/Preferences/com.github.shockone.black-screen.helper.plist',
                '~/Library/Preferences/com.github.shockone.black-screen.plist',
                '~/Library/Saved Application State/com.github.shockone.black-screen.savedState',
              ]
end
