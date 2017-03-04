cask 'openmw' do
  version '0.41.0'
  sha256 '360447e9e41c12811231c6d378976877d12d13a558fa437265a1e5aa18b3c2c1'

  # github.com/OpenMW/openmw was verified as official when first introduced to the cask
  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}.dmg"
  appcast 'https://github.com/OpenMW/openmw/releases.atom',
          checkpoint: 'b6c39884fbdf3cc3a0c83691442bd8575994a25f5f45ce4dc1ad6d39f38111fb'
  name 'OpenMW'
  homepage 'https://openmw.org/'

  suite 'OpenMW'
end
