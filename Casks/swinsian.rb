cask 'swinsian' do
  version '1.11.5'
  sha256 '65dca978e36ebd96b8b62517edc290a74ae4782b85406d0078207f1c56216db8'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          :checkpoint => '2fba983f625d0f14f8c9f4f1d7494237cc4239c7b71de7009554bb37f7b1c8fb'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
