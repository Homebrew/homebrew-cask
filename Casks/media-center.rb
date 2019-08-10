cask 'media-center' do
  version '25.00.88'
  sha256 'a0aa81abf2e714b5bcdc776dcf8ec55081f839ef29a8a221079b5299ace9d031'

  url "https://files.jriver.com/mediacenter/channels/v#{version.major}/latest/MediaCenter#{version.no_dots}.dmg"
  appcast 'https://www.jriver.com/download.html',
          configuration: version.no_dots
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
