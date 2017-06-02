cask 'mountain-duck' do
  version '1.9.1.6809'
  sha256 '8e399434a55f527d0144d096a5e2a833e4a04ff977dcbca3aa9df0cb832a0943'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '1f9e169322e927e9d3a797eabfd05fcec19aaa7b1e0c407c947e7e6823f981b6'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
