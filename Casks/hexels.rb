cask :v1 => 'hexels' do
  version :latest
  sha256 :no_check

  url 'http://hexraystudios.com/Hexels.dmg'
  homepage 'http://hexraystudios.com/hexels/'
  license :unknown

  app 'Hexels.app'

  zap :delete => '~/Library/Preferences/com.hex-ray.hexels.plist'
end
