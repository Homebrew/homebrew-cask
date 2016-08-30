cask 'mountain-duck' do
  version '1.5.3.4707'
  sha256 'f73a95ace12e1659558d946024ab52278f79c9e12cb0d8eb3f74e18ba78460a1'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '8ec0ef4430150e85dde0dea1f4214502a87e782ad394d70a39577103a62a204b'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
