cask 'graphicconverter' do
  version '10.2589'
  sha256 '48cd50854dade1d72e2ab7f08f37e496be214ba41ae92c0dbe5fd5b0d998d20c'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.minor}.zip"
  appcast "http://www.lemkesoft.org/files/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: '621f0918d123dd684b30e03995c383469a893408dc180aba7a760e87c0d1cf6f'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  app "GraphicConverter #{version.major}.app"
end
