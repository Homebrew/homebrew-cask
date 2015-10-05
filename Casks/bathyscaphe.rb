cask :v1 => 'bathyscaphe' do
  version '253-v826'
  sha256 '63d2327293362ba707cd963668cb3225ab8a51bb361ad2a6e2a5f298feea9892'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'
  license :oss

  app 'BathyScaphe.app'
end
