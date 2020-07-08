cask 'beatunes' do
  version '5.2.10'
  sha256 '6dd137c8ea07d53667c41316f25acd819f256f7398e54c02a627c78631947931'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  appcast 'https://www.beatunes.com/en/beatunes-download.html',
          must_contain: version.dots_to_hyphens
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
