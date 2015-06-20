cask :v1 => 'bathyscaphe' do
  version '251-v816'
  sha256 '3a225c571ffcc9e939008442efc00dc10399d6ef3f67e39e7b13a659c63b1519'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'
  license :oss

  app 'BathyScaphe.app'
end
