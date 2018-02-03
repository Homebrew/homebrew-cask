cask 'bisq' do
  version '0.6.5'
  sha256 'd3cefc59327f7e4e6d0f56d8cec642355086694475b2143a9fec10ade8960475'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: '65eb6995084605e36fe7c146c264e7c93dff580fd82a8140bcd0333c303b4114'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
