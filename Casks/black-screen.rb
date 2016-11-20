cask 'black-screen' do
  version '0.2.92'
  sha256 'fcad3d0a69f3a6e9c71b94c37cd124d314385a3cafafc908122468a1e16ff5ba'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '6b1979e63d2bf84efc34796c3853772d4824ac653820f120ccf8cd9ce6251a31'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
