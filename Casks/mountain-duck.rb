cask 'mountain-duck' do
  version '2.0.2.8111'
  sha256 '7efcc1adb305434f4275e7601066feb16ad44a12df7a0dfeb2a9837da6c2cce1'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'dc6882a9aa9df8db3047cff716001d4126e826c02845c98132d8efb8243c3a7f'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
