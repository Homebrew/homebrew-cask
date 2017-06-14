cask 'beatunes' do
  version '5.0.0'
  sha256 '589305e75e6d0de450753760fcc6977ef2410181348b7e0d1cab13d5c81626e6'

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
