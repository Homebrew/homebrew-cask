cask 'copay' do
  version '4.8.0'
  sha256 'bf3822c9f6b7f0acffae4dac49b0bc045e900b8306c306432899a0a4a1603704'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom'
  name 'Copay'
  homepage 'https://copay.io/'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
