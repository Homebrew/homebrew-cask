cask 'lingon-x' do
  version '6.0'
  sha256 '8168b2a9ae37694dd65f3b17b978c445af4f1d916e6a4d449206a486b559d097'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '94b77fbea675529c2fd3d2c0cb578f0a32b2a599a2e1c0f0dcd425c12a79ce32'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
