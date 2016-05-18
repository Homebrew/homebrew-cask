cask 'copay' do
  version '1.12.1'
  sha256 '2c3181c5985dd7165e563c2702ec927947a8e0f601583204bdecaf897fa3ebdc'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'b28d35e6e29c6811be0e5d9531a95fed474b69d0cb783c1bcf48c7b22977f71e'
  name 'Copay'
  homepage 'https://copay.io'
  license :oss

  app 'Copay.app'
end
