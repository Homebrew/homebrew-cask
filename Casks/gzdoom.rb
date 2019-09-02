cask 'gzdoom' do
  version '4.2.0'
  sha256 'b680a970935fcb5e809eb1f51c6df4ea5004a34f7ea97a2212198f1ac2cf92f2'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
