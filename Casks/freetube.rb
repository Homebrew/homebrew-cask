cask 'freetube' do
  version '0.7.3'
  sha256 '2bd054ad61e2a9754e69a200311f3a0f8fca09d0f3429e6130dbe3ae8936567e'

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/FreeTube-#{version}-mac.dmg"
  appcast 'https://github.com/FreeTubeApp/FreeTube/releases.atom'
  name 'FreeTube'
  homepage 'https://github.com/FreeTubeApp/FreeTube'

  app 'FreeTube.app'

  zap trash: [
               '~/Library/Application Support/FreeTube',
               '~/Library/Preferences/io.freetubeapp.freetube.plist',
               '~/Library/Saved Application State/io.freetubeapp.freetube.savedState',
             ]
end
