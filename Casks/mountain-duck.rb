cask 'mountain-duck' do
  version '3.3.3.15387'
  sha256 '6db686192e233eeb4f29373a14a2edd1d32ccaf5808ea7d1ab7d53917b3cf723'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
