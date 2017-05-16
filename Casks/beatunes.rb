cask 'beatunes' do
  version '4.6.15'
  sha256 'fba1b7f2c07ba0b07536ddafc2a3e6458a15715fec02b55a15462438154510bd'

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
