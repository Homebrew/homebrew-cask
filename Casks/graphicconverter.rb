cask 'graphicconverter' do
  version '10.4.3,2825'
  sha256 '104e3f36d29eae93cac0e9de825948c8b21cf20063136aedc27cb43b962be52c'

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
