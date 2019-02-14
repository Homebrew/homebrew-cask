cask 'graphicconverter' do
  version '10.6.9,3340'
  sha256 '558c79b8db75d6f24b939d785ed72837ed0fe08c4afb0337bcd8a1a7702cb5c3'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true

  app "GraphicConverter #{version.major}.app"
end
