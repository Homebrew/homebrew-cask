cask 'swinsian' do
  version '1.12.7'
  sha256 '91cf71e278296079cd26456dd7751622dcfea875711947c855ab586d9b5a7757'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '7d4542d41dc40702c2dd66f3c8a6496e8bb408a73eee2b190177053b81be85b3'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
