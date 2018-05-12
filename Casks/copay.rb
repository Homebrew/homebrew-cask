cask 'copay' do
  version '4.3.4'
  sha256 '9f6dffb29957d8bdd933084e2ebed5719c0ca2a02dc5e83fbb9e3bdcd262a68a'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'd5910e107f6f23404e28260eb8d29d96c75039dfb8b0f3e8fb06a5a6d7935db0'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
