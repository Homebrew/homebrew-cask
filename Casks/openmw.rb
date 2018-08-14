cask 'openmw' do
  version '0.44.0'
  sha256 '0c1f75c9831adb8722bcbf322d731c0422fb8b95aca117bc3fa852b7de9350eb'

  url "https://downloads.openmw.org/osx/OpenMW-#{version}.dmg"
  appcast 'https://github.com/OpenMW/openmw/releases.atom'
  name 'OpenMW'
  homepage 'https://openmw.org/'

  app 'OpenMW.app'
  app 'OpenMW-CS.app'
end
