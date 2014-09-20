class SonicPi < Cask
  version :latest
  sha256 :no_check

  url 'http://sonic-pi.net/files/sonic-pi-mac-latest.dmg'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
