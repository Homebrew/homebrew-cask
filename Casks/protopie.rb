cask 'protopie' do
  version '3.8.1'
  sha256 'a4ef58120343e50ab5aff1d1e4ea1a98a1e125b14b5e39396c12df637345f1ab'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/',
          checkpoint: '9782b15224eedf0a3d721e5569cdbcbd327befb4e788a7982e32be8771517228'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
