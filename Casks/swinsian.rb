cask 'swinsian' do
  version '2.2.4'
  sha256 '2135ff20c9077e1205b9e12ad3ab1fb688b22a2be4ca4db7f5710b08498118e2'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
