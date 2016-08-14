cask 'copay' do
  version '2.4.0'
  sha256 '4ec3a22b787fa4d0214961e79138f4a28bf1cf4353c460725fe39326c6c76a0e'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '30ffdfb7b3b882be4952711bf3672549655c681c364965845b5f38031c18c0dc'
  name 'Copay'
  homepage 'https://copay.io'
  license :oss

  app 'Copay.app'
end
