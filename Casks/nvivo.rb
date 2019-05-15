cask 'nvivo' do
  version '12.4.0.3621'
  sha256 'ffb0a91c2f90df1bd26a9dfe36802b63c5257306944ca478c287a3cc9c5e6700'

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
