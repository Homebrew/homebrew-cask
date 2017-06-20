cask 'graphicconverter' do
  version '10.4.2,2796'
  sha256 'cbe6a41ccd539af4acfa28f898133321a149db372aafcf9726d5d20078d96e03'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: 'c356b7fe4b7aae2cbd560a35c36221642c01a108244421c0d2a30ff499940365'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
