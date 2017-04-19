cask 'mountain-duck' do
  version '1.9.0.6581'
  sha256 'c1f7f0acdd32f7335c74d202689581df8e09b8a6896ae5e8390bfb28cfcb8d32'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'e586f5a29e37a2ea7be25a1ceb2746737e073f2e6a4b23c822a088656f86707d'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
