cask 'mountain-duck' do
  version '1.5.5.4797'
  sha256 '76e173b2fbc954334497a9c88c658a2b57dd3cba5edfde3b8aaa3455080e5281'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'c7f30408c9caab5a281857934febc781c278b2af4f1c258b42f091c796a447e5'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
