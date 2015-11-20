cask :v1 => 'shruplay' do
  version '2015_05_16'
  sha256 'f23e25969e78935d94fbd6a8a3b28ac13fb3d0af9f3caa66fb3451eab9319150'

  url 'http://cdn.getshru.com/wp-content/uploads/2015/10/SHRUPlayMac_2015_05_16.zip'
  name 'SHRUPlay'
  homepage 'http://getshru.com/'
  license :gratis
  tags :vendor => 'PDX Pet Design'

  app 'ShruPlay.app'
end
