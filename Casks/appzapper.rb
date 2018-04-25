cask 'appzapper' do
  version '2.0.2'
  sha256 'bc05e7b2290ffdbfba23fcb445d57237eef258fea679aff902aa135ee302d297'

  url "https://appzapper.com/downloads/appzapper#{version.no_dots}.zip"
  appcast "https://www.appzapper.com/az#{version.major}appcast.xml",
          checkpoint: '726661c71d2e4be4a6905d6ca410674a146c1e7f3333155c415a958da4a8ef39'
  name 'AppZapper'
  homepage 'https://www.appzapper.com/'

  auto_updates true

  app 'AppZapper.app'
end
