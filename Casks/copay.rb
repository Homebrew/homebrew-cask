cask 'copay' do
  version '3.14.0'
  sha256 '524b6259e67640add384b6d9a133db8b6a424c7d4698257c5f73bde9fcb62e51'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'f558ac51ea5a6cf6a7c61347731b5221625c8fb871f9a5f415cdfd53124ccfcc'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
