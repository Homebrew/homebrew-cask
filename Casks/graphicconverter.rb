cask 'graphicconverter' do
  version '10.2691'
  sha256 '7311c138a9fca66bf6a68f92ce4145f818007165dd82bbe49f71ff9a9be7e21e'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.minor}.zip"
  appcast "http://www.lemkesoft.org/files/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: '621f0918d123dd684b30e03995c383469a893408dc180aba7a760e87c0d1cf6f'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  app "GraphicConverter #{version.major}.app"
end
