cask 'beatunes' do
  version '5.2.0'
  sha256 '37f49f537cb420695e394d7fbd91b1627546da2d593fb8ff5217a7fcbd9f05ce'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  appcast 'https://www.beatunes.com/en/beatunes-download.html',
          configuration: version.dots_to_hyphens
  name 'beaTunes'
  homepage 'https://www.beatunes.com/'

  depends_on macos: '>= :sierra'

  app "beaTunes#{version.major}.app"

  zap trash: [
               '~/Library/Application Support/beaTunes',
               '~/Library/Caches/beaTunes',
               '~/Library/Logs/beaTunes',
               '~/Library/Preferences/com.tagtraum.beatunes.plist',
             ]
end
