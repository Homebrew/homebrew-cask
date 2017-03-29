cask 'graphicconverter' do
  version '10.2743'
  sha256 'afb9db2618b6d89f954604ceb52091cb9cc03b8b219ad8979bcf06100044aeaf'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.minor}.zip"
  appcast "http://www.lemkesoft.org/files/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: '621f0918d123dd684b30e03995c383469a893408dc180aba7a760e87c0d1cf6f'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  app "GraphicConverter #{version.major}.app"
end
