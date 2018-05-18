cask 'lingon-x' do
  version '6.2.1'
  sha256 '50dd8d16fefce63b5842d16708bdc5a724f3548676ebca897ed0965c6ec1c6d2'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'a8ddd7474299bd558f5b5b4bbb8a3aeaff18e4f479044b0b65d81c9543c38953'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
