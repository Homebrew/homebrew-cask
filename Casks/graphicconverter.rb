cask 'graphicconverter' do
  version '11.2.1,4400'
  sha256 'd03bb3c8e7676b034e2e8bffdc9323357593634ecb83054a60d1f4791716b2d0'

  # lemkesoft.info/ was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true

  app "GraphicConverter #{version.major}.app"

  zap trash: [
               '/Users/Shared/Library/Application Support/GraphicConverter',
               '~/Library/Application Support/GraphicConverter',
               '~/Library/Group Containers/*.com.lemkesoft.graphicconverter*.group',
               '~/Library/Caches/com.lemkesoft.graphicconverter*',
             ]
end
