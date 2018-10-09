cask 'bitpay' do
  version '4.7.1'
  sha256 '8ba1edddd580e4c9db4544e09befc88e50e31bb73e334111e890fe8ef9f2f778'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom'
  name 'BitPay'
  homepage 'https://bitpay.com/'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
