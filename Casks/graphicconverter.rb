cask 'graphicconverter' do
  version '11.1,4132'
  sha256 'fdafcabd95497d8d02ae9a906119b59f7a38c429bf7e49dbc880296a776405e1'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true

  app "GraphicConverter #{version.major}.app"
end
