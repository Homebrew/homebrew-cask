cask 'media-center' do
  version '25.00.81'
  sha256 '6b56057246de4383eeaf6c5e49ae6cf998af412e6dc3b5195ecba136521a5dba'

  url "https://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
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
