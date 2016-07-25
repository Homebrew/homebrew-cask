cask 'copay' do
  version '2.3.0'
  sha256 'f76e49dda5d17903ec2e11ba1c0a004fd260d2cdf69886a64173ae0b6487ed48'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'cc185d20343e47f5545b5b9a26a6839abc645555b70234170403a995ef047a2a'
  name 'Copay'
  homepage 'https://copay.io'
  license :oss

  app 'Copay.app'
end
