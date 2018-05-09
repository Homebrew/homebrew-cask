cask 'copay' do
  version '4.3.2'
  sha256 '1c8c5c3fc788678942e2cd00361986662836a4d39808d057aba8efd643643055'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '8fa6b12d7e49da98d6087e704b93eec3b13620daf73b621397c363fc979517e1'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
