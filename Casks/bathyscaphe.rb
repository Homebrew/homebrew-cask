cask 'bathyscaphe' do
  version '270-v900'
  sha256 'ca65c250dad51d54ab8dc45c13a8dce74f50b0bc84b0d2dba50596e6cd7d5cf2'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'
  license :oss

  app 'BathyScaphe.app'
end
