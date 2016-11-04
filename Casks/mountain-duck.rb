cask 'mountain-duck' do
  version '1.6.2.5061'
  sha256 '52bf7a3878c7dbfc0834d4aae32c8e3b065f4604cf10c7a91a2d9f8e71ccaddc'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'a6294d1557d2b077dd59a0757c2dea16866bb45fb872b76f5b5999b1b6a6fe85'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
