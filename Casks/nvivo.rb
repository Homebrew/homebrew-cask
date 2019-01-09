cask 'nvivo' do
  version '12.1.0.3068'
  sha256 'd0d61187f387e2a7ae6bac523673137bd2ef91624067cbe9d0355d5de2a622d7'

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
