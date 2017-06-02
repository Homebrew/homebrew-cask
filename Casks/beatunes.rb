cask 'beatunes' do
  version '4.6.16'
  sha256 '3c6acfca568289128eabc0d51b34c30942ecfb702575817feb907fd07a16a31f'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com/'

  depends_on macos: '>= :lion'

  app "beaTunes#{version.major}.app"

  zap delete: [
                '~/Library/Application Support/beaTunes',
                '~/Library/Caches/beaTunes',
                '~/Library/Logs/beaTunes',
                '~/Library/Preferences/com.tagtraum.beatunes.plist',
              ]
end
