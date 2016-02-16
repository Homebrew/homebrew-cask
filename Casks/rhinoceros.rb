cask 'rhinoceros' do
  version '5.1'
  sha256 '46beb3575baa4c9c0478e6f1451fe9d759eb3880a39f927ed9a0e3daf28205ad'

  url "https://files.mcneel.com/Releases/Rhino/5.0/Mac/Rhinoceros_#{version}.dmg"
  name 'Rhinoceros'
  homepage 'https://www.rhino3d.com/'
  license :commercial

  app 'Rhinoceros.app'
end
