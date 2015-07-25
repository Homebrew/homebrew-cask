cask :v1 => 'swinsian' do
  version '1.10.15'
  sha256 '5ec2ca8a2c7bff1d51db86970b989d89ef6084e27c5fe76946d1e9d3227726f9'

  url "http://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          :sha256 => '424eb73016e1a9d473beab4c0d1f0b2ed670a6386130317dcc44574ee096417d',
          :format => :sparkle
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
