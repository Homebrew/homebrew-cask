cask 'copay' do
  version '2.7.0'
  sha256 '6de452f093d3b4ab4383ddc0166172c5d6fbb14669214278fba2d3320f39cbad'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '10dd9c4b5ec7c252fe97d1dbb138bb3b50401b9c0d5b9ad7667ef59a520edebe'
  name 'Copay'
  homepage 'https://copay.io'
  gpg "#{url}.sig",
      key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'
end
