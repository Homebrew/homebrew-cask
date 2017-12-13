cask 'lingon-x' do
  version '5.2.4'
  sha256 'ab5e57426f231646531c88acb2d6baf879a7ee3070e1322e3fc8036cb84e5758'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'd928e8bb4cbef1a65641ee76cca5cab21e67ef2c628dd19e7d45df3aed586c53'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
