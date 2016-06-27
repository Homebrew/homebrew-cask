cask 'mountain-duck' do
  version '1.4.4.4166'
  sha256 '3fd5dfaa5532e56b985050ab70a79ea7b4746e77ba4e5ef5b3c5b83b8d76817b'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '111395ccbebdb63f11c34f394044c99c54de1f73a94172e6f718cdfde40b32e6'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
