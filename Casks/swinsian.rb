cask 'swinsian' do
  version '1.12.6'
  sha256 '611495c07e65c28d3f26f99bc46d7850d0c4ef6663a766cec55b94ab1fc6f1b4'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '0b2ca85ef37f4215353e0e795fd6d6d81725f0da2e2d8bbe7751a82af6302085'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
