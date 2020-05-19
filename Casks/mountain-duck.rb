cask 'mountain-duck' do
  version '3.3.7.15567'
  sha256 '82080fac703130820fdf68fcdb187a3272a56b054b7878a13d55eba058ec5e05'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
