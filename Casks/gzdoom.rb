cask 'gzdoom' do
  version '3.6.0'
  sha256 'd5d33724e80233a41de74279dc549d80e34f1089af444dcd4d4538070ccda280'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
