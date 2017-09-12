cask 'electrum-ltc' do
  version '2.9.3.1'
  sha256 '1e016660eb002d7bb8f62be360fc377498432ff8b8ad49b05af69e6426064132'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/',
          checkpoint: 'e0b146fa16071eecc7062175f7c02e68e9abd0643a6b5620c6b6322dc57cc511'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  gpg "#{url}.asc", key_id: '9914864dfc33499c6ca2beea22453004695506fd'

  app 'Electrum-LTC.app'
end
