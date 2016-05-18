cask 'beatunes' do
  version '4.6.1'
  sha256 '2e0563a976e30af50b219bff0b522b2506e55380259fced6451e514f68bc1061'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com'
  license :closed

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64

  app "beaTunes#{version.major}.app"
end
