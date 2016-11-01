cask 'graphicconverter' do
  version '10.2628'
  sha256 '50f54dcb134be2661b552320c17b74838b65990acf4ab8416a29a5da16fc5052'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.minor}.zip"
  appcast "http://www.lemkesoft.org/files/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: '621f0918d123dd684b30e03995c383469a893408dc180aba7a760e87c0d1cf6f'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  app "GraphicConverter #{version.major}.app"
end
