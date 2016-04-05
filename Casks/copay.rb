cask 'copay' do
  version '1.9.7'
  sha256 '1325eb34c9c5244a9551f27a314c13537043141d09ef86b7c3fd0fb21c50a4bd'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'aad77ea2cf8e892b9820d586fa33264b55c3e8fad61923ae1c7b5dd58b18472e'
  name 'Copay'
  homepage 'https://copay.io'
  license :oss

  app 'Copay.app'
end
