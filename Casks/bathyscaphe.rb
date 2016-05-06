cask 'bathyscaphe' do
  version '270-v931'
  sha256 'c27f02467f748662537a09128ffedd73a6ccace0ec28fcb5a86a6c2bfdde87c1'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'
  license :oss

  app 'BathyScaphe.app'
end
