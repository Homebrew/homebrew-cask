cask 'beatunes' do
  version '4.6.8'
  sha256 'a59f76de6fbc4a5eb93296961fa587094a4d898b326746cbb520e6d3fdeddfc8'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com'

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64

  app "beaTunes#{version.major}.app"
end
