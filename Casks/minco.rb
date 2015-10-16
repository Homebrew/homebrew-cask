cask :v1 => 'minco' do
  version '2.0.24'
  sha256 '4f33194afa5d17a986a82e2ad9518fe21de3eec51d49eaf2c6cb200415447fd7'

  # webpack.com is the official download host per the appcast feed
  url "https://ssl.webpack.de/celmaro.com/updates/minco2/Minco#{version.delete('.')}.zip"
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco2/minco.xml',
          :sha256 => '4f33194afa5d17a986a82e2ad9518fe21de3eec51d49eaf2c6cb200415447fd7'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app 'Minco.app'
end
