cask 'swinsian' do
  version '2.1.4'
  sha256 'b227d99a5432a31129b66f8538a99d9ed3e4d8b8c5d879d24128495532450d93'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
