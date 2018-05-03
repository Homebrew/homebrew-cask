cask 'copay' do
  version '4.3.0'
  sha256 'f0bdaaf5ceff783ea4bafae112fd7904076444c2a977002196188b5120d32905'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '5e25cb6b84f9f65188f9ede5dac0750d5fc8f7ab5db56787ac085bb887253c02'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
