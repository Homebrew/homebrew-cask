cask 'lingon-x' do
  version '6.1'
  sha256 '4f868f48cef8dbc9a7843da754e0b33b02a5da75f5ef8f28d5ef601fc5030486'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '00c2ca18407dc91b927d4406ee96a8b250e0842adea70eda063864d29bb160ea'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
