cask 'mountain-duck' do
  version '1.9.7.7313'
  sha256 '7ea53e67bba8fa17e8a27266a22b6d7031a49a42c4a446ee8f9f0b29c8dbeb4a'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '2bfdd1eb702fdbea8ba6d2524c9a2ee5663912b5a8e5bd9a535a9c0d2ebbc5d7'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
