cask 'graphicconverter' do
  version '10.6.0,3058'
  sha256 '42a5d40921caa3831c3057d1fef90e5390552c45f5add06eb733616f45031522'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: 'a3c5a250c2637613a6fb4548e70b5ea64cd57289eb016bb9c55a1ea775bb3190'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
