cask 'bathyscaphe' do
  version '300-v1057'
  sha256 '7fa8d7b374d8feb87762cf5e560ed90d24416122c6ed2535805c05a58d1d0946'

  # bitbucket.org/bathyscaphe/public/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'https://bathyscaphe.bitbucket.io/'

  app 'BathyScaphe.app'
end
