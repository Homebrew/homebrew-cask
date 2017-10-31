cask 'mountain-duck' do
  version '2.1.0.8541'
  sha256 '0e13dbe08cda6d7c13766e2adf3ef51ea29af92ca5d07c77c402375ed0e40d17'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'aa04e5a3626fb72c7c247be06f4798ddf23f2d5c98d3c36f1f9ec28351fcf135'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
