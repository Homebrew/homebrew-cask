cask 'lingon-x' do
  if MacOS.version <= :el_capitan
    version '4.3.9'
    sha256 '85d5b7e28f3b404b285d11e35311dbb7d9cc23df20ebb089c08a7483e37e62ef'
  elsif MacOS.version <= :sierra
    version '5.2.9'
    sha256 '7169aaa861626f62112c6ac24256226cd5a5f3b73dade41a4a803232d5942063'
  else
    version '6.3.2'
    sha256 'b5f60becd9e5afa2ea8f094c4d0e268b5dd16d6727babbe37c4588569a67dbad'
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml"
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :high_sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
             ]
end
