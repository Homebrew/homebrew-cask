cask 'beatunes' do
  version '5.1.8'
  sha256 'a20407eef739406ca237b17ddb6f19c5ab2df1a805c11164629df3636c4704c8'

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
