cask :v1 => 'pdfsam' do
  version '2.2.2'
  sha256 '235635231c0e2428e9da1b126075d4cafe6b43625645350ff1491033dfc461a8'

  url "https://downloads.sourceforge.net/project/pdfsam/pdfsam/#{version}/pdfsam-#{version}.dmg"
  homepage 'http://www.pdfsam.org/'
  license :oss

  app 'pdfsam.app'
end
