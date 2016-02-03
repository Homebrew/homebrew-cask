cask 'mountain-duck' do
  version '1.0.14.3240'
  sha256 '6174c5a5ce9cfa18d958172682e346a45ed76fe6c8023c24885c1aa9ae515242'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '3428fa8d0fdc61789eefacaa76ffe8b068b3e2d9f997891add5f20da28bb93bd'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
