cask 'bitsquare' do
  version '0.4.9.9.3'
  sha256 '4e44b70dd12cc2ef2d3cc641c84a6bc8c38518fba5af327acf0de8985cccdcd1'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bitsquare-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare/releases.atom',
          checkpoint: 'f1ce7f5db8512545a60123e5fa567ad8737f3ffb8672d17b298002f5faba156f'
  name 'Bitsquare'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bitsquare.app'
end
