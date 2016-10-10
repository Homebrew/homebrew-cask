cask 'openmw' do
  version '0.39.0'
  sha256 '378d959f9e14b1f943bdd9edc45f1013904ec21632e73d98a745bcbbce0028ba'

  # github.com/OpenMW/openmw was verified as official when first introduced to the cask
  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}.dmg"
  appcast 'https://github.com/OpenMW/openmw/releases.atom',
          checkpoint: '592c69134e57dd382bc2f99520d27211b654ce19758aa9af3fab059dcd16c64e'
  name 'OpenMW'
  homepage 'https://openmw.org/'

  suite 'OpenMW'
end
