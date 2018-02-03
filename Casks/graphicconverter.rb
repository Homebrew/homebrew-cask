cask 'graphicconverter' do
  version '10.5.4,2971'
  sha256 'c6901a343c02800cf9a72cfa1c2a3642a539f1c036382ccdcf1f046cd616c36c'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: '7b983b030452997e5e2d3aacbe84219c707bd73eff2b7f65946feb8e03b72026'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
