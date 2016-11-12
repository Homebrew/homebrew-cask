cask 'black-screen' do
  version '0.2.80'
  sha256 '219fbd83091e29e2e20333b788af6b58d9cef3c23f17d3292b97aa998b01387e'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '9ba004adbea64befa518455323b9bb1805beae9403bd58632c87ca2ac817ced5'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
