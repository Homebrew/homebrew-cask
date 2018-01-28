cask 'lingon-x' do
  version '5.2.6'
  sha256 'dcda364a338b19b4af7387a595a302eaebbae1f7725b42ddae07ed1bf56c3e5b'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'e9ca1425752c701f252e5a0a63d0a509fd7afeb32311d56f94f3eb266bc11706'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
