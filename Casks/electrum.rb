cask 'electrum' do
  version '2.6.3'
  sha256 '0358d5941cbd206393f0fae033ffd9a0b54fa0b98b0b7728df60ec0df801b6b3'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl
  gpg "#{url}.asc",
      key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
