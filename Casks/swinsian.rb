cask 'swinsian' do
  version '2.1.11'
  sha256 '9d7029e50ae8bcb1faf5ab52546134efaa8cc2799fecf9e2c4900dfe23e2cbf2'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
