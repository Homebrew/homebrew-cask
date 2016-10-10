cask 'swinsian' do
  version '1.12.3'
  sha256 '4dd2bdd82d2460ea2b26a25f8fc93ed29e7a147985692d0ae5c9f5941c16f897'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '9f1e2c0ec9d7858be83f369ab73399d8080cdd7bfba4bc1f662445d1db2cef0c'
  name 'Swinsian'
  homepage 'https://swinsian.com'

  app 'Swinsian.app'
end
