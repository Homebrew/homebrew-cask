cask 'bathyscaphe' do
  version '272-v947'
  sha256 '997f6afef6e63d1a2a00ec8e809aafbc0b5152d7ff520d74af729c7ab394d656'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'

  app 'BathyScaphe.app'
end
