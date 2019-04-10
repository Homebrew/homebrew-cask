cask 'gzdoom' do
  version '4.0.0'
  sha256 'cec834ab614ba5a514a808db68d2a63c7f4227b869694267e855fcc928dee384'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
