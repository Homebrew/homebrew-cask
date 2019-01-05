cask 'gzdoom' do
  version '3.7.1'
  sha256 'a655507f3cbfc470620f1e89986088065afb53e2cb40a39dff4e16c45928f01a'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
