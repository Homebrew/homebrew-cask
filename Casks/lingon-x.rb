cask 'lingon-x' do
  if MacOS.version <= :high_sierra
    version '6.6.5'
    sha256 'b0231b1a98dcc8f5c4234b419c9f5331407b8cce29b33f0ea2e32b12595adfa8'
  else
    version '7.5.2'
    sha256 'b8c9ad6714bb7dc4ff4ee3696bab640e506bcafbe5969b7507487b277426d047'
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
