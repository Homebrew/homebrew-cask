cask 'bathyscaphe' do
  version '280-v988'
  sha256 '12f1036e7881a9a8bd61cfe0493fe7c4684e7b139438018790b219e04e7b1c30'

  # bitbucket.org/bathyscaphe/public/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'https://bathyscaphe.bitbucket.io/'

  app 'BathyScaphe.app'
end
