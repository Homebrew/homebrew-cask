cask 'gzdoom' do
  version '4.1.3'
  sha256 'a0545705aa952e76554e412c2c05479107989457de6f19bd2f8f7330c902fb80'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
