cask 'mountain-duck' do
  version '2.7.0.9820'
  sha256 '85fa11b17a6c421a2eab0833ff298188ee845b2b70caa2464ab8c0dd7b53fe44'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
