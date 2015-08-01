cask :v1 => 'minco' do
  version '2.0.22'
  sha256 'bf98d80e0273552559ae7b98ba411d62ccdca66ddd9f2f274bd2aa2cdcd44c58'

  # webpack.com is the official download host per the appcast feed
  url "https://ssl.webpack.de/celmaro.com/updates/minco2/Minco#{version.gsub('.','')}.zip"
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco2/minco.xml',
          :sha256 => '3ab9e6d0a6e9ebecfeab805c399a7194fe2a88bdcc1b096446e9f8be7e7195f8'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app 'Minco.app'
end
