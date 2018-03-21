cask 'copay' do
  version '3.14.2'
  sha256 '9c983e794547263f2c3198248b42fc048beba23a711c5a2fbeae1ec022e4062c'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '0dc73ed919aa9337dad13787c755303b86945bc293ff3265014585283ae2b31d'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
