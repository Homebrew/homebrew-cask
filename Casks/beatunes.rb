cask 'beatunes' do
  version '4.6.3'
  sha256 '55e67e197bc47ea46f5f42c52600621716ae2854221013c77fa3cdab653b325a'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com'
  license :closed

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64

  app "beaTunes#{version.major}.app"
end
