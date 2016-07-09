cask 'mountain-duck' do
  version '1.4.5.4203'
  sha256 '576b24a67abdf9d746135f61423fc5b9072b2f87fccf067820b51d7d5ae4bdda'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'dd9ce20d0a870d9c07793644c539e9cc135bdd54542e17eb75fe75392a58b4a6'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
