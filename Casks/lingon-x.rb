cask 'lingon-x' do
  version '5.2.7'
  sha256 '0dc92c414f87cb15912ebd280b0171c5c69c619c40df775b43aa4b26eb971372'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '2ced583891406edaf17f6bc69dbfc5f9d53ac15d8e11df4ba20af48dc0101045'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
