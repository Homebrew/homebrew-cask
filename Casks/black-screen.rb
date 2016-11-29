cask 'black-screen' do
  version '0.2.93'
  sha256 'f22217696997aa67833fd9bf6a888c748d4d743e18068d1bf4d8cc87e087a9bc'

  url "https://github.com/vshatskyi/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/vshatskyi/black-screen/releases.atom',
          checkpoint: 'ee18ae661108286d196dde79788ea2bc48a62c14f882a260319bd2670b9a6ae2'
  name 'Black Screen'
  homepage 'https://github.com/vshatskyi/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
