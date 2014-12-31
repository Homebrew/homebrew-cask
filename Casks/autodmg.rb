cask :v1 => 'autodmg' do
  version '1.5.2'
  sha256 'a18cc5a840e56faaba133ab0cb3ea24e50b71a81cc87cd436ef71e739e62fea0'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :apache

  app 'AutoDMG.app'
end
