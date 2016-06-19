cask 'bathyscaphe' do
  version '270-v937'
  sha256 '34900c805c30c697e2e0a4bc3fb5788a1ecdb9099fbc902c55158efe99c1815c'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'
  license :oss

  app 'BathyScaphe.app'
end
