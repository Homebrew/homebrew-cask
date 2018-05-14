cask 'copay' do
  version '4.3.5'
  sha256 'eac0673c0b9718dcba414cba5792ef0fa39270dd6a6590ccf98b4f23c762fc42'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'eab3dfc008886b760f0e3c4c8f81a4e6a832db0b6fe66683eb0dfc1063a97ef9'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
