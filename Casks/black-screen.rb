cask 'black-screen' do
  version '0.2.93'
  sha256 'f22217696997aa67833fd9bf6a888c748d4d743e18068d1bf4d8cc87e087a9bc'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '141a8a3a03bedb6a2b750d1669cefd717841cb6ea958ffc380480517efada04c'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
