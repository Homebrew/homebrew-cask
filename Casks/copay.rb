cask 'copay' do
  version '1.11.0'
  sha256 '948f2da206d82a3f4f18b5f5e34d448dfc910d6a3c291791fae79d7195fff14a'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'e572dd3166b0654d71e7f8f9f7713dd830f9a995e32d54c1cd504977f56bcfbb'
  name 'Copay'
  homepage 'https://copay.io'
  license :oss

  app 'Copay.app'
end
