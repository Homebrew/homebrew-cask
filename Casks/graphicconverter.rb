cask 'graphicconverter' do
  version '11.0,4003'
  sha256 '1c73db344b870252313962131c23e75a52e373ddf7f072fe959b596eea001675'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}.dmg"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true

  app "GraphicConverter #{version.major}.app"
end
