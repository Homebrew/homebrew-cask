cask 'graphicconverter' do
  version '11.1.2,4216'
  sha256 '3280965384b2616556840f9dae826c85b0df7157bc6a875cc0d0d2e13f7c2df0'

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
               '~/Library/Caches/com.lemkesoft.graphicconverter*',
             ]
end
