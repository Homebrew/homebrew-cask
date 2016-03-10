cask 'graphicconverter' do
  version '9.2098'
  sha256 'ae584e3e4d508eb4a6d99e8caa234466d0e88108465486ddd45cd641fc7d24df'

  # lemkesoft.org was verified as official when first introduced to the cask
  url "http://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.minor}.zip"
  appcast 'http://www.lemkesoft.org/files/graphicconverter/graphicconverter9.xml',
          checkpoint: 'eb62cdcced7681f47360d3b7c39e7b18db3a3cf96ffa8c93945bf5a0fe55151f'
  name 'GraphicConverter'
  homepage 'http://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.major}.app"
end
