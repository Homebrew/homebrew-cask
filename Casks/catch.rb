cask 'catch' do
  version '1.9.3'
  sha256 'a68ec939abe55d25b992047a6f88b448f9aad25b545c2e9b137e00296c40eec1'

  # github.com/mipstian/catch was verified as official when first introduced to the cask
  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip"
  appcast 'https://github.com/mipstian/catch/releases.atom',
          checkpoint: '1ec55b0baef1cc8729e826f130133bb1fd3c291bb87251111a0a2ed1d7289a0a'
  name 'Catch'
  homepage 'http://www.giorgiocalderolla.com/index.html#catch'
  license :oss

  app 'Catch.app'
end
