cask :v1 => 'bathyscaphe' do
  version '260-v876'
  sha256 'fabcd00800d589de199074db2999a768a38cf025da02460564e2986dd05521ee'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'
  license :oss

  app 'BathyScaphe.app'
end
