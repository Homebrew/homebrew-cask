cask 'lingon-x' do
  version '5.2.3'
  sha256 '0b4a6d69e3d080952cc4c642c2aaa1716ebb9cccbc7d6d33669dea446a4e68a8'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '3b281f0fbc6c31f764c588c19c9044fe2308c7ae26911e63458461c83317fafc'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
