cask 'swinsian' do
  version '2.1.15'
  sha256 '76987c0a2437f10c67b30e7fffc9b3e768a8c9e373fa16c98d4b8f8fa01979bb'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
