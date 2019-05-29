cask 'graphicconverter' do
  version '10.7.1,3460'
  sha256 '2f7be3cb9e04ebcd4d89e44599e0f1ff84a27c1dda85a4d716b9a0eef0280a24'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true

  app "GraphicConverter #{version.major}.app"
end
