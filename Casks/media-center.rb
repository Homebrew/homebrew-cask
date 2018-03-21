cask 'media-center' do
  version '23.0.103'
  sha256 '067a3f7a99d2d7a30f4f90a2c59f7438cf062a3c4479d930c955dfe3a860c9bd'

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
