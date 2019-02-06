cask 'mountain-duck' do
  version '2.7.1.9840'
  sha256 'fac3937d56ca3c093b24fc94958b162dc18205322a8624d0f2258007e3735b48'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
