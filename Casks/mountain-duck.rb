cask 'mountain-duck' do
  version '2.6.4.9632'
  sha256 '3432d10ebfef3b18ac6994cf837d0855b9e7b920ec33eb0124d47abf84527f77'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
