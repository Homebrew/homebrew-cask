cask 'beatunes' do
  version '5.2.7'
  sha256 '515585f07c91472eeb59a72064631fd9eeceeed3e19942f7c811cb9eb261eab1'

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
