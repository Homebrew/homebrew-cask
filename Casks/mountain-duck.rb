cask 'mountain-duck' do
  version '1.7.0.6208'
  sha256 'ca1df4e82f7d4e3487ec27f95e9346ae8b9b31e6d1b60e3da5ae99fef7578090'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '1d1fc124c6155b14322e8f742e3127b1dba94bb65679973c486f1cdcfc08ab7c'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
