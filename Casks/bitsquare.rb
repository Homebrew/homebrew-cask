cask 'bitsquare' do
  version '0.4.9.8'
  sha256 'badb2a66252072af83c7c8d77a98b556b8eeef94eacc2d104bbe85c5af7c45d6'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bitsquare-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare//releases.atom',
          checkpoint: '04c4276419fe404f24206e3a9a222e4d9676b136a92ade78df95af0fec21bafc'
  name 'Bitsquare'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc",
      key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bitsquare.app'
end
