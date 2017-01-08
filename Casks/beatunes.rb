cask 'beatunes' do
  version '4.6.10'
  sha256 '61044a00678fde4a718c1178871fb68d679076b230cabe9609c4c6741f516b75'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com/'

  depends_on macos: '>= :lion'

  app "beaTunes#{version.major}.app"
end
