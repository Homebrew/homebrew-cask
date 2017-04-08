cask 'beatunes' do
  version '4.6.13'
  sha256 '66cccc073716efeddcc84b37f83bcdbdb27c5f01ee94b3d89c55acaf6d71dfba'

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
