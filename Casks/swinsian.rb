cask 'swinsian' do
  version '1.11.5'
  sha256 '65dca978e36ebd96b8b62517edc290a74ae4782b85406d0078207f1c56216db8'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: 'a7b2d9e496369b5600395a2f525a849652e586c4ce5108e50d2fd8f2cdab9d8f'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
