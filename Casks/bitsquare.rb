cask 'bitsquare' do
  version '0.4.9.9'
  sha256 '5439e357ea7d4d33b22aaa57da34f2f3e80837c2413bbaaf4d49fdc6ebfdbfff'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bitsquare-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare//releases.atom',
          checkpoint: '84e08b981ce536df40748d72eda6cd6e838231ff349719442203e5cefd4819bd'
  name 'Bitsquare'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bitsquare.app'
end
