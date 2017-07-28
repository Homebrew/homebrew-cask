cask 'bisq' do
  version '0.5.3'
  sha256 'fa3b44ea298f66be697556b967d53e78964abc8b9da52bc8bad5e0500fd4b65b'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare/releases.atom',
          checkpoint: 'a4a386edb7bedaffe3f2f282a42042fed68a086538af81dc08ca4689b008221e'
  name 'Bisq'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
