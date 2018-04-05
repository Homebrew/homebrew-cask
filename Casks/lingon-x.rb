cask 'lingon-x' do
  version '5.2.8'
  sha256 '1d8326b5a87817c94f8dd1be2c496d56abe34aa9336af06de8fc28e747c5591f'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '2fa4943c7d6d9301804c97fecf6da189adf07ab1522dbe4c01820a919c3a9f08'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
