cask 'media-center' do
  version '23.00.65'
  sha256 '21b281a09296c868f6083f988652a3ca174b79cd8c1eb2836fd46be793e86277'

  url "http://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
  name 'JRiver Media Center'
  homepage 'https://www.jriver.com/'

  auto_updates true

  app "Media Center #{version.major}.app"

  zap delete: [
                "~/Library/Caches/com.jriver.MediaCenter#{version.major}",
                "~/Library/Saved Application State/com.jriver.MediaCenter#{version.major}.savedState",
              ],
      trash:  [
                '~/Library/Application Support/J River/',
                '~/Documents/JRiver/',
                "~/Library/Preferences/com.jriver.MediaCenter#{version.major}.plist",
              ]
end
