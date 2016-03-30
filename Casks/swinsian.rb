cask 'swinsian' do
  version '1.11.8'
  sha256 'aead098039dffaeabb9a88367ee5f60366c09b6e09a20e3d1e41d5a43e0a0d31'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '97e2fd4d039255f95503061d36a36c6df370374e8f6fc2b60bcd3d05458b5191'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
