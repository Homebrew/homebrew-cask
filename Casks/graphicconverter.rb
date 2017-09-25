cask 'graphicconverter' do
  version '10.5,2872'
  sha256 '342ff0785a1bf875b827b1262015cce42d16693e1917ffdef41334cbf4be3a1e'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: '95af0a7b6f48146ff2db7a33560aa7f7c2ebe20c45c569c99169b7a5b2ddcc47'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
