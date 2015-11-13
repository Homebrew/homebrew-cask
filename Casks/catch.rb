cask :v1 => 'catch' do
  version '1.9.3'
  sha256 'a68ec939abe55d25b992047a6f88b448f9aad25b545c2e9b137e00296c40eec1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip"
  appcast 'https://github.com/mipstian/catch/releases.atom'
  name 'Catch'
  homepage 'http://www.giorgiocalderolla.com/index.html#catch'
  license :oss

  app 'Catch.app'
end
