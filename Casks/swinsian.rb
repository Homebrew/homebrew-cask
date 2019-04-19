cask 'swinsian' do
  version '2.1.12'
  sha256 'b828f9ab2b154c9680c2786148473805a50495e1eec74768cf4b3a803f9a5dbb'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
