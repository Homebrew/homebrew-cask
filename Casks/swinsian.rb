cask 'swinsian' do
  version '2.1.13'
  sha256 'e8eca0eece00f69fce7d384b96386639948f97248e03029b691c95f2ed7fbf25'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
