cask 'beatunes' do
  version '4.0.26'
  sha256 '18ccbdf745c6b062fb41c4ebb08038e122aaef466946d55d38ec5a2152251515'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.gsub('.', '-')}-osx.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com'
  license :closed

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64

  app "beaTunes#{version.to_i}.app"
end
