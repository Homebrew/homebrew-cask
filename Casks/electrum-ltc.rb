cask 'electrum-ltc' do
  version '3.0.6.2-1'
  sha256 '6177d0557100448e87ea940a22eacb7eeefd97ed445705298128d5db42249c56'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/',
          checkpoint: 'e13f41395c8cd71948ea0c5833b73efb7eab88546a6b560308acaf3bafe3a81f'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  gpg "#{url}.asc", key_id: '9914864dfc33499c6ca2beea22453004695506fd'

  app 'Electrum-LTC.app'
end
