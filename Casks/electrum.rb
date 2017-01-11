cask 'electrum' do
  version '2.7.14'
  sha256 '540206f8ebc83e6d83f85adbf66a80833b436d6fd08cb01294c1724e7c846086'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
