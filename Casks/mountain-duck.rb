cask 'mountain-duck' do
  version '2.2.2.8962'
  sha256 '0bbb2a2760313990c634b9f544b6c972dc5c15a2e112d99781d339d69de4f880'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '8946be3129a65fe5e7c6ab420d8c07a8d1a1d98a2bec0e1408295122d1f9ffc9'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
