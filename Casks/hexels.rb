class Hexels < Cask
  version :latest
  sha256 :no_check

  url 'http://hexraystudios.com/Hexels.dmg'
  homepage 'http://hexraystudios.com/hexels/'

  app 'Hexels.app'
  zap :delete => '~/Library/Preferences/com.hex-ray.hexels.plist'
end
