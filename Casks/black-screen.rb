cask 'black-screen' do
  version '0.2.142'
  sha256 '31c19513eb3da8839bc4c99b04750103912123a9b1e154ae52a3befa1679b309'

  url "https://github.com/vshatskyi/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/vshatskyi/black-screen/releases.atom',
          checkpoint: 'c5be23cc74cce090f019daef4f9c1cd45e04a9a91ac548d0d854fd7e51950dd3'
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
