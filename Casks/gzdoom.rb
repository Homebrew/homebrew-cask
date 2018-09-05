cask 'gzdoom' do
  version '3.5.1'
  sha256 'cb22dafebafc87a66487c9c66889b487be48063f91354eb42476caa49ff6f34a'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
