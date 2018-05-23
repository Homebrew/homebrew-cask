cask 'kactus' do
  version '0.3.6'
  sha256 '5478ea63dab1220c93af6917e67e7e895cc25aa28f85840838a4d26f9b7f5d1d'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '3b9299c719b19312c0414de1a0039ea6176a6dee31af3a4c5b6b07f3d3f65f07'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
