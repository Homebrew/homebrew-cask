cask 'openmw' do
  version '0.45.0'
  sha256 'dd4e41c40f5beaa6175644a7277651ee28b5f4fecceef49d48db7680abc731a2'

  # github.com/ was verified as official when first introduced to the cask
  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}.dmg"
  appcast 'https://github.com/OpenMW/openmw/releases.atom'
  name 'OpenMW'
  homepage 'https://openmw.org/'

  app 'OpenMW.app'
  app 'OpenMW-CS.app'
end
