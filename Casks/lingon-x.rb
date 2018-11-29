cask 'lingon-x' do
  version '6.5.2'
  sha256 '724735cf8a1afaa2f3b88f5ce618a0514ca382430d54cdcd0c06fdd1ac1d520d'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml"
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
