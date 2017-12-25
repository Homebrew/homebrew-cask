cask 'bisq' do
  version '0.6.2'
  sha256 '4b774299d0fe8f2da5e3bd09b90bc1d72d21f203dadc80fdc3c5475e1f8cb3eb'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: 'bffb806705ece1331ee2fd351698f0b922daed3695178c5eaf60baa5e3e5bfb2'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
