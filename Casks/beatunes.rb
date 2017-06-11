cask 'beatunes' do
  version '4.6.17'
  sha256 '37e583441bdad4c3d80c575799303185618b9c5eb271cc96cc134a316411aa28'

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
