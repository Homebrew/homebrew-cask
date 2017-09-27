cask 'media-center' do
  version '23.00.41'
  sha256 '076110a7eb79d583798c3fe7194afe780b62df974992983ec8f13b4b21753554'

  url "http://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
  name 'JRiver Media Center'
  homepage 'https://www.jriver.com/'

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
