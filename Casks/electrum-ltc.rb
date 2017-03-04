cask 'electrum-ltc' do
  version '2.6.4.2'
  sha256 '38dcf0c7cb49a6bcb5daa350c0b225b4ca464263d78a2d28fb87eb5b9ede8e7b'

  url "https://electrum-ltc.org/download/Electrum-LTC-#{version}.dmg"
  appcast 'https://electrum-ltc.org/',
          checkpoint: 'f5800f2a76e9b80218e12097e7ed6fb91ef2be98a0df83218b35d35641e57f9e'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  gpg "#{url}.asc", key_id: '9914864dfc33499c6ca2beea22453004695506fd'

  app 'Electrum-LTC.app'
end
