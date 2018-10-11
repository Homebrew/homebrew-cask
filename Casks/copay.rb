cask 'copay' do
  version '4.6.2'
  sha256 '0bc82e497b6576a8d0c861c607fb71565e84611f4172d788c8ec3698a98b45b2'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom'
  name 'Copay'
  homepage 'https://copay.io/'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
