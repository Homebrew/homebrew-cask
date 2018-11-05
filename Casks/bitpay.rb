cask 'bitpay' do
  version '4.8.0'
  sha256 '7b998c228fbd543a272f9237d0dd79bb42a6b78ebb36c156928adff8ded3fde8'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom'
  name 'BitPay'
  homepage 'https://bitpay.com/'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
