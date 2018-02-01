cask 'bisq' do
  version '0.6.4'
  sha256 'af68aa7944a3a4168cd6a402da5da8cef474bc07d95376b7d22168f3006c1540'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: '937e2d0341514104d193cb753966b28602e7f91ea79bc98eed3c20a5b087d8c1'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
