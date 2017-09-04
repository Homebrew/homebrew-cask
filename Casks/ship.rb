cask 'ship' do
  version '2.6.4,702'
  sha256 '358c2ea4f409f5688ac971086512b45fb55cb63cc11f166c5c72ca67ff407ce6'

  url "https://www.realartists.com/builds/#{version.major}.0/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version.major}.0/sparkle.xml",
          checkpoint: '22b8b7320532a014ac88154ecf0e04583d063af9aa4bb936816a3621178c0865'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  auto_updates true

  app 'Ship.app'

  zap trash: [
               "~/Library/Application Support/com.realartists.Ship#{version.major}",
               "~/Library/Preferences/com.realartists.Ship#{version.major}.plist",
               "~/Library/RealArtists/Ship#{version.major}",
             ]
end
