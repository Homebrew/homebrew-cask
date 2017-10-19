cask 'mountain-duck' do
  version '2.0.3.8407'
  sha256 '61b6ebc9282436b06ca7d34a74f57ef1e463360697b743532faeff76b031b243'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'e793cad7647fa061fa0189d3db3be8244694c5f73dff6e50f12dd893d0140188'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
