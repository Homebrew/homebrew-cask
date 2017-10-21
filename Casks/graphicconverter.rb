cask 'graphicconverter' do
  version '10.5.1,2894'
  sha256 'fae4fdc950167ecda11cc7319edc0bc71df6daf63f55b6148929ea7f215c351a'

  # lemkesoft.info was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml",
          checkpoint: 'cc7683df2adfaf3714453a6d689513b0e6f59f52017e166996bd244c018eff70'
  name 'GraphicConverter'
  homepage 'https://www.lemkesoft.de/en/products/graphicconverter/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app "GraphicConverter #{version.major}.app"
end
