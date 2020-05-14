cask 'graphicconverter' do
  version '11.2,4376'
  sha256 'd786ffde76832be3b39111bc62857d463e1f99cfd572b998a618b5342c94909e'

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
