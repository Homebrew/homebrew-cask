cask 'beatunes' do
  version '5.1.12'
  sha256 '1d528f24f16ba823e103e1cc6410fbad78809a7eb7f5f8b1b3c3f1a53c09c153'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com/'

  app "beaTunes#{version.major}.app"

  zap trash: [
               '~/Library/Application Support/beaTunes',
               '~/Library/Caches/beaTunes',
               '~/Library/Logs/beaTunes',
               '~/Library/Preferences/com.tagtraum.beatunes.plist',
             ]
end
