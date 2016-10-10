cask 'electrum-ltc' do
  version '2.6.4.2'
  sha256 '38dcf0c7cb49a6bcb5daa350c0b225b4ca464263d78a2d28fb87eb5b9ede8e7b'

  url "https://electrum-ltc.org/download/Electrum-LTC-#{version}.dmg"
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  gpg "#{url}.asc",
      key_id: '9914864dfc33499c6ca2beea22453004695506fd'

  app 'Electrum-LTC.app'
end
