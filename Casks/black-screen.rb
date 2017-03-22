cask 'black-screen' do
  version '0.2.140'
  sha256 '701a3768f4d6954facd9dcf7ee50712a6ab7def39f1e680e62869f23c2626d2e'

  url "https://github.com/vshatskyi/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/vshatskyi/black-screen/releases.atom',
          checkpoint: '495f333af99d83359a752658e2e8957a6a31bad25377dbdf2fa3641ef506620d'
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
