cask :v1 => 'swinsian' do
  version '1.11.1'
  sha256 '7f8d3d74f9fa2ebb9973fdb2a83adc1b414b6dfbd341d636271a8aa7ee2c05bf'

  url "http://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          :sha256 => '424eb73016e1a9d473beab4c0d1f0b2ed670a6386130317dcc44574ee096417d',
          :format => :sparkle
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
