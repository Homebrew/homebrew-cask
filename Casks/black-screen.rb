cask 'black-screen' do
  version '0.2.79'
  sha256 '406b0435ae1b86fa1ccbc28a30c87e1665963dbdbc3d912bf6433c7e54608f88'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'a9ec22acde816442ab055c65c58e44d48f67acd9bc7740065965448472ba7a2b'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
