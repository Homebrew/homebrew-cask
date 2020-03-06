cask 'graphicconverter' do
  version '11.1.3,4293'
  sha256 'aa8a48d5e7075473499def1774b94270f5eae9ec0aa5765080da791f70d9b652'

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
