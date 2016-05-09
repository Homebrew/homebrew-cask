cask 'beatunes' do
  version '4.6.0'
  sha256 'ba84ef2e7f1a2dabb96cc27b4bba286c9f0e209812599c54973b9ec8cf97176c'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com'
  license :closed

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64

  app "beaTunes#{version.major}.app"
end
