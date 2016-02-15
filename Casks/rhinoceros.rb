cask 'rhinoceros' do
  version '5.1'
  sha256 '46beb3575baa4c9c0478e6f1451fe9d759eb3880a39f927ed9a0e3daf28205ad'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  name 'Rhinoceros'
  homepage 'https://www.rhino3d.com/'
  license :commercial

  app 'Rhinoceros.app'
end
