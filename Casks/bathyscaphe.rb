cask :v1 => 'bathyscaphe' do
  version '252-v824'
  sha256 '9babd7ce371a9a4cce2638dba728383c2dde2714660699c62689a97f3550effa'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'
  license :oss

  app 'BathyScaphe.app'
end
