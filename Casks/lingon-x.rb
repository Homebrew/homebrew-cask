cask 'lingon-x' do
  version '6.2'
  sha256 '4bbda23e57d7be8c461e13217e586c5b3fa265243f761cf29f57c21b3c8a6a09'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '5d33fc35b648f9fb8d91188f5244f17e0a90d6aabfa4d65a30c99e8554ac8584'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
