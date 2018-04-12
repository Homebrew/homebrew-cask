cask 'copay' do
  version '3.15.2'
  sha256 '2b2747c8f45cd6060a4e7ff6c3f4093f3db21adc8d50f29d7e048a70c2a1621b'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '95aff0b7be3e2ad3406cd086886c8c22c31540c358875e1e52f45c039d917ffb'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
