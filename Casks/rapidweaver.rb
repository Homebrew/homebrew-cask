cask 'rapidweaver' do
  version '8.2.1,20758.1559229313'
  sha256 'e739f786cbe18f42bdc766e8bc4d6d2777d7112ce54797674e091ae0ae38f182'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver#{version.major}-#{version.after_comma.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
