cask :v1 => 'minco' do
  version '2.0.23'
  sha256 'e8acbfb029f8df05f62164168653f0605aa0a11207c0b0fa255454ec033dea26'

  # webpack.com is the official download host per the appcast feed
  url "https://ssl.webpack.de/celmaro.com/updates/minco2/Minco#{version.delete('.')}.zip"
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco2/minco.xml',
          :sha256 => 'e8acbfb029f8df05f62164168653f0605aa0a11207c0b0fa255454ec033dea26'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app 'Minco.app'
end
