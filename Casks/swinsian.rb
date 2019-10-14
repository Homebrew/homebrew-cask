cask 'swinsian' do
  version '2.2.0'
  sha256 'ef6cb1e95f557989df60e44cb0afde9377940010ceccebf26eae573840f4c977'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
