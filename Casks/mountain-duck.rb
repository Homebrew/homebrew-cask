cask 'mountain-duck' do
  version '2.5.0.9388'
  sha256 'f42314b65bdf570793befd936fefd34c204710bab55a29b97ce78a392654bdbe'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '83984dce45ae513461f9e2a308a8f1dab99701d99f81b2164def997336399a0c'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
