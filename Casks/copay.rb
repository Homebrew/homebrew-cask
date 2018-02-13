cask 'copay' do
  version '3.14.1'
  sha256 '829f0cacce2e53f361c36d0f6a471073fd525d236775dfd10929ff90fa4b7b29'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'b431beb451e59a79ab660d86f85a40a51db36a2e05cff0053abe31089a208e03'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
