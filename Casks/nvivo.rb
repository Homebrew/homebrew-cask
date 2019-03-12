cask 'nvivo' do
  version '12.3.0.3508'
  sha256 '46156e0065cd6c5a7cdf141b3b2ab27be41e3ef0a02361867a80090af1befc3d'

  url "https://download.qsrinternational.com/Software/NVivo#{version.major}forMac/#{version}/NVivo%20#{version.major}.dmg"
  appcast "https://download.qsrinternational.com/Software/NVivo#{version.major}forMac/appcast.xml"
  name 'NVivo'
  homepage 'https://www.qsrinternational.com/'

  app "NVivo #{version.major}.app"

  zap trash: [
               '~/Library/Caches/com.qsrinternational.NVivo',
               '~/Library/Preferences/com.qsrinternational.NVivo.plist',
             ]
end
