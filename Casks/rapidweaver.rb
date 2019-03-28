cask 'rapidweaver' do
  version '8.1.7,20674.1553595093'
  sha256 '7cded50091d2eb32f3c7c9f5fc98c8cca6ba97a02ee6b1e81337f57b4c26cb51'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver#{version.major}-#{version.after_comma.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
