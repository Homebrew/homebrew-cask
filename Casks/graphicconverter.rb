cask 'graphicconverter' do
  version '10.4.1,2758'
  sha256 '92c0ad87c3d70f231ad2be28d6613651872d53be10a5a1debb31d1ddbf83c3d2'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: 'c030fb7c2b96c05f50b1afb09419d4ab58da157ff5c58cd7c8a30141bd9bedc3'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
