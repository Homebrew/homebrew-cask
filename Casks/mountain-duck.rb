cask 'mountain-duck' do
  version '3.0.1.14013'
  sha256 '64450b878dbf4d4b48b1f14f1da74b872c37899b869c8a83a1189be483f021b7'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
