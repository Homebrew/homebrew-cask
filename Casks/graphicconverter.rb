cask 'graphicconverter' do
  version '11.1.1,4163'
  sha256 'c117c62293da46d7ae4f23c203ee32590f588b7879e4893ed01442672b67e756'

  # lemkesoft.info was verified as official when first introduced to the cask
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
               '~/Library/Caches/com.lemkesoft.graphicconverter*.group',
             ]
end
