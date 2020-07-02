cask 'freetube' do
  version '0.7.3'
  sha256 :no_check

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/FreeTube-#{version}-mac.dmg"
  appcast 'https://github.com/FreeTubeApp/FreeTube/releases.atom'
  name 'FreeTube'
  homepage 'https://github.com/FreeTubeApp/FreeTube'

  app 'FreeTube.app'
end
