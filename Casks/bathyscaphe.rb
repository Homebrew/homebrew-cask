cask 'bathyscaphe' do
  version '280-v988'
  sha256 '12f1036e7881a9a8bd61cfe0493fe7c4684e7b139438018790b219e04e7b1c30'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  appcast 'https://api.bitbucket.org/2.0/repositories/bathyscaphe/public/downloads',
          checkpoint: 'ddb893bb169ce5bb42f0f3f0ece5315e53606ba03054ab78452db18eebd53084'
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'

  app 'BathyScaphe.app'
end
