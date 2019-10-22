cask 'media-center' do
  version '25.0.108'
  sha256 'fd17d7cc1f1d946995f11a907eebfce2a25aea1af693ccb1a96d455cd3e97b20'

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
