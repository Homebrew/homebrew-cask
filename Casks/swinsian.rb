cask 'swinsian' do
  version '2.2.1'
  sha256 '11127c3102303064b3669be11f73a92f3a44d977513180e93a631e0abf4c1165'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
