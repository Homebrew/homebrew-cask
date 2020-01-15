cask 'swinsian' do
  version '2.2.3'
  sha256 '684d831ff124f7766c8bef5dd42b8db99a35da7bf6691dd128b581bfd41fe172'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  auto_updates true

  app 'Swinsian.app'
end
