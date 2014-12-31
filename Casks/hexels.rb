cask :v1 => 'hexels' do
  version :latest
  sha256 :no_check

  url 'http://hexraystudios.com/Hexels.dmg'
  homepage 'http://hexraystudios.com/hexels/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hexels.app'

  zap :delete => '~/Library/Preferences/com.hex-ray.hexels.plist'
end
