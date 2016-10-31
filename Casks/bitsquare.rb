cask 'bitsquare' do
  version '0.4.9.7'
  sha256 '95fac918e89f14363d9acbb7655f69830f2bb50fc89fdfa9aa66add7e64faa66'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bitsquare-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare//releases.atom',
          checkpoint: '8b6afd6c45cfe0bac77190a35c24f7dbdf547d70b6453e31fe1f5a5d4c826fa3'
  name 'Bitsquare'
  homepage 'https://bitsquare.io'
  gpg "#{url}.asc",
      key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bitsquare.app'
end
