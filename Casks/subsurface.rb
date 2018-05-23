cask 'subsurface' do
  version '4.7.8'
  sha256 '9f3aae8562cc96f058c8a1aa62e9c1c8e8d4c351a97a4ad20bf3ec3efb572c43'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
