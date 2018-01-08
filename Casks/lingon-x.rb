cask 'lingon-x' do
  version '5.2.5'
  sha256 '4b4e05f89d5f42e1d2b2fb3531a1b7cf5ed8341db018984f65bd19ff16249953'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'b051ee79a9bf3c267546607d27367adb6842991f389d3354a07692038f23e0ef'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
