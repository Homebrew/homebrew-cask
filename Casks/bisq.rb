cask 'bisq' do
  version '0.5.1'
  sha256 '68c7fdbead8b723c9a887576a4d9be497a1c525db029ccec8af62001a7a42d6a'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare/releases.atom',
          checkpoint: '8db5c14a85edddb227fd5671522b34142709ce5e2b92f134a781c0c660742c61'
  name 'Bisq'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
