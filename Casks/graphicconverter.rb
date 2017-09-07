cask 'graphicconverter' do
  version '10.4.3,2825'
  sha256 '104e3f36d29eae93cac0e9de825948c8b21cf20063136aedc27cb43b962be52c'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: 'ae0955655230f81245d05b3d54e7ba5b3b3862f80c038ab0e503e18d970a8126'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
