cask :v1 => 'swinsian' do
  version '1.11.3'
  sha256 '557d4bcb433efefb662097c13e6b456e187e285557ce42973e1071af37fa33aa'

  url "http://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          :sha256 => 'dd4e6e1855f2156ead889735a76b5dc327b37d7368362f06e77ca051d7a159c1',
          :format => :sparkle
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
