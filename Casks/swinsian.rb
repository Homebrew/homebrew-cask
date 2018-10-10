cask 'swinsian' do
  version '2.1.7'
  sha256 '7f56fea536eeae41c9273ae18d44e76a40789f5d9598d18d0b142bd4391c5f50'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
