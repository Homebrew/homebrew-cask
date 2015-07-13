cask :v1 => 'minco' do
  version '2.0.20'
  sha256 'e4717098cb229e7ab0324bbe4dc700be4c463cc18d574e9c1fe3c4a8346b2e4f'

  # webpack.com is the official download host per the appcast feed
  url "https://ssl.webpack.de/celmaro.com/updates/minco2/Minco#{version.gsub('.','')}.zip"
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco2/minco.xml',
          :sha256 => 'd1a43c75492761dec8d0bb8dd9f0226baa54df2ba6198334d962681000e6c0e4'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app 'Minco.app'
end
