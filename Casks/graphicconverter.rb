cask 'graphicconverter' do
  version '10.6.8,3327'
  sha256 'e20275ea12aecaee0313a1aeffff78aab6ac70392fffeb35066633178a76ee07'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
