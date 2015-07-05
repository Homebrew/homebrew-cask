cask :v1 => 'minco' do
  version '2.0.19'
  sha256 'ec81e51821620963fc8d8dc340a76143e6165e956526e8dc9bbc7c511ba5804e'

  # webpack.com is the official download host per the appcast feed
  url "https://ssl.webpack.de/celmaro.com/updates/minco2/Minco#{version.gsub('.','')}.zip"
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco2/minco.xml',
          :sha256 => 'bb97976079bec30577746243740ecfa7140502b2d43f48186b672c8a52495fc5'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app 'Minco.app'
end
