cask :v1 => 'minco' do
  version '2.0.25'
  sha256 'a5192aea97d2d322e1af5a8ffb9de28ae0521121ac668e4171c9bcc5b71136a4'

  # webpack.com is the official download host per the appcast feed
  url "https://ssl.webpack.de/celmaro.com/updates/minco2/Minco#{version.delete('.')}.zip"
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco2/minco.xml',
          :sha256 => 'a5192aea97d2d322e1af5a8ffb9de28ae0521121ac668e4171c9bcc5b71136a4'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app 'Minco.app'
end
