cask 'black-screen' do
  version '0.2.83'
  sha256 'ef7b76567664e683b83d667c0090861327e9fecaffb1e958ded74ab549f9da07'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'b21758f232c992ec7023305eda0fd244e29f39e187118330f3acaff74ae1456a'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
