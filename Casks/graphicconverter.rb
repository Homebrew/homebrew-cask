cask 'graphicconverter' do
  version '10.5.2,2911'
  sha256 'cf705720d3ab710300376e1114029c1eb276724e9ef9a275fe36df626c9d8926'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: 'd81276fa9cce65c47078aa20516134d573a2c4b670073b2fc94e108d25c695e8'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
