cask 'beatunes' do
  version '4.6.11'
  sha256 '9e774d7113a9d14d7d2ccfa981bcd809c46b21ea9d49261bf0d1957c319e69c5'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com/'

  depends_on macos: '>= :lion'

  app "beaTunes#{version.major}.app"
end
