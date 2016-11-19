cask 'black-screen' do
  version '0.2.89'
  sha256 'bb7fd5c787c059003755d772d40a00850dd41943501550d2d123c5e56eba35ce'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'dbfc4aa436a676d037694be4ad322da14c709ea620281eb04c96e0756ad1295b'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
