cask 'media-center' do
  version '24.00.45'
  sha256 'cdc6570a7119c3360766fe393140036ee6d32437bf56934754c6146d1923cc4d'

  url "http://files.jriver.com/mediacenter/channels/v#{version.major}/latest/MediaCenter#{version.no_dots}.dmg"
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
