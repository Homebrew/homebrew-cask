cask 'beatunes' do
  version '5.2.5'
  sha256 '40fd463c0de5e5fd117bd997249a526bdb1417374ba2cb47fb44bee3b508e5d6'

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
