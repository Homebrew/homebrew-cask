cask 'black-screen' do
  version '0.2.87'
  sha256 '16547f5f09075f9f42c2e552830dbcffb7c97a7d544983abc0e888ab870f5d45'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '6e14f994d735ab6c41c866ad97a381a2473a46441402f7213b56ab3e131c130a'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
