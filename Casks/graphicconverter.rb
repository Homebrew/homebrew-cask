cask 'graphicconverter' do
  version '10.5.5,2998'
  sha256 'efb03b6487f04addf057f53228c910dd30b29dd14bb0c97bc7bcf70b85f53096'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: '8919c6ff98af50edd7829d8795cbdb7d3bbd119ba3d3b921855f371f14f97c7f'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
