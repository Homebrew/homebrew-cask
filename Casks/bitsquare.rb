cask 'bitsquare' do
  version '0.4.9.9.1'
  sha256 '33e03ba7fe43a6d1db29aaf7c94ea66078f853c2b4e851abd2688f43152c3cd7'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bitsquare-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare/releases.atom',
          checkpoint: '972e9ef712ad7c0350af858b89d717cf70eda2ed7baa0290e9f25ff1a7067ba1'
  name 'Bitsquare'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bitsquare.app'
end
