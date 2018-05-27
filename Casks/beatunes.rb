cask 'beatunes' do
  version '5.1.6'
  sha256 '2219db16c888c0e38d3dba34d2533126fe80314926b7d2c07ae1757112f75ddf'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com/'

  depends_on macos: '>= :lion'

  app "beaTunes#{version.major}.app"

  zap trash: [
               '~/Library/Application Support/beaTunes',
               '~/Library/Caches/beaTunes',
               '~/Library/Logs/beaTunes',
               '~/Library/Preferences/com.tagtraum.beatunes.plist',
             ]
end
