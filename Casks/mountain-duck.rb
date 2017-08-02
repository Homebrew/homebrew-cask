cask 'mountain-duck' do
  version '1.9.8.7322'
  sha256 '3cbe041f9a6bc25f3315e3e864dec532498080beadc63791fad5a0bf46f91ada'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '764cb5b8669c7e64fd53afdaa29c189c4f407062157abe705cf3ad2cbaa77f39'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
