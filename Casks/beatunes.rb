cask 'beatunes' do
  version '5.2.4'
  sha256 '2049db469cfead2fa7f580afa3ef67989dd48b730d9e3ea4b30d4999dafd4576'

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
