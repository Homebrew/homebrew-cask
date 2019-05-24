cask 'rapidweaver' do
  version '8.2,20740.1558691647'
  sha256 '49f31d6c85ba5452c8b332dda03e6879945d2b02e4ebffaf4cbf4f1c58c8351a'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver#{version.major}-#{version.after_comma.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
