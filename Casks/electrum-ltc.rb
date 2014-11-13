cask :v1 => 'electrum-ltc' do
  version '1.9.8.5'
  sha256 'db5a36d7c4dca249fd6c4fee2dec04f88d9778e35b02a7e1df992327d0a66944'

  url "https://electrum-ltc.org/download/Electrum-LTC-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  homepage 'http://electrum-ltc.org'
  license :unknown

  app 'Electrum-LTC.app'
end
