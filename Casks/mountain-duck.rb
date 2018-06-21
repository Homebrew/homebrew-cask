cask 'mountain-duck' do
  version '2.5.2.9448'
  sha256 'd713f52c8de3ee9c90683f5e4bcdd4ce786619493536622e85a065ce143e8969'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
