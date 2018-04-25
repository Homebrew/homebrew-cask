cask 'media-center' do
  version '24.00.16'
  sha256 '9173fdd3e2c5b4fcd616197f8febd58142c4d580c049e310fd3a15f33d2674a0'

  url "http://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
  name 'JRiver Media Center'
  homepage 'https://www.jriver.com/'

  auto_updates true

  app "Media Center #{version.major}.app"

  zap trash: [
               '~/Documents/JRiver/',
               '~/Library/Application Support/J River/',
               "~/Library/Caches/com.jriver.MediaCenter#{version.major}",
               "~/Library/Cookies/com.jriver.MediaCenter#{version.major}*",
               "~/Library/Preferences/com.jriver.MediaCenter#{version.major}.plist",
               "~/Library/Saved Application State/com.jriver.MediaCenter#{version.major}.savedState",
             ]
end
