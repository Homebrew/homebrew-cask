cask 'nvivo' do
  version '12.1.0.3068'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.qsrinternational.com/Software/NVivo#{version.major}forMac/#{version}/NVivo%20#{version.major}.dmg"
  appcast "https://download.qsrinternational.com/Software/NVivo#{version.major}forMac/appcast.xml"
  name 'NVivo'
  homepage 'http://www.qsrinternational.com/'

  app "NVivo #{version.major}.app"

  zap trash: [
               '~/Library/Caches/com.qsrinternational.NVivo',
               '~/Library/Preferences/com.qsrinternational.NVivo.plist',
             ]
end
