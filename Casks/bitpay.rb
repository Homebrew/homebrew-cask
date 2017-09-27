cask 'bitpay' do
  version '3.8.2'
  sha256 'b575724fb840c6af5c3824dfb80d374b9e9bb700c5ac5208085d040d16f46643'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'de635cd22d229ec1d0500232b41ea387061e5695f797ecc81e6cc262cff37999'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
