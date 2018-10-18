cask 'mountain-duck' do
  version '2.6.5.9650'
  sha256 '6bc0a015a2a15cfa881adfeff7eb74e05ef612324f66ffdbf5cce695d622772f'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
