cask 'bisq' do
  version '0.6.1'
  sha256 '433d2636b73a0857433ce5c045ef8097a79e7cb4e899c3c5e8543288740d4e0a'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: '02710167f24eb93a9f91ddbf111defd6378cb941481c928a1c6bd6b1bc2dea66'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
