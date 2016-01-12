cask 'invisiblix' do
  version '3.2'
  sha256 '528328a0e7c3f0a72e763ea766324d491dfe20d6f18a2882eefda1a5a2c4d68e'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/invisiblix/invisibliX-#{version}.zip"
  appcast 'http://www.read-write.fr/invisiblix/appcast.xml',
          :sha256 => 'a4c7a042cca1506de8133f56d2d4dec5b3173c2cd42cde2b27bd2dac79284387'
  name 'invisibliX'
  homepage 'http://www.read-write.fr/invisiblix/'
  license :oss

  app 'invisibliX.app'
end
