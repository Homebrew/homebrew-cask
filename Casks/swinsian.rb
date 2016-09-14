cask 'swinsian' do
  version '1.12.1'
  sha256 'fb2546f780b9941520cbbc5a5e9564239c13472ddafcbf2ab3d5c38535ee0d30'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '1a618b9060f0641b6fd1ec4e4088e9ea47ef886e6f25e4f84fa5bb38a25ca556'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
