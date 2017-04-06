cask 'pgweb' do
  version '0.9.7'
  sha256 '26c615c03f5341412f1c22c23844438e91cf191a6e8c2c6112a96e05976679a1'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '1814398fb6974f711ca00a386821a3f0b7225b0107175af21eadc8ec175e6cb4'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
