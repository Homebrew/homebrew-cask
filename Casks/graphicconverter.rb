cask 'graphicconverter' do
  version '10.2589'
  sha256 '48cd50854dade1d72e2ab7f08f37e496be214ba41ae92c0dbe5fd5b0d998d20c'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.minor}.zip"
  appcast 'http://www.lemkesoft.org/files/graphicconverter/graphicconverter9.xml',
          checkpoint: 'eb62cdcced7681f47360d3b7c39e7b18db3a3cf96ffa8c93945bf5a0fe55151f'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.major}.app"
end
