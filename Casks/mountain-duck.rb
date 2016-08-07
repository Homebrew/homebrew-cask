cask 'mountain-duck' do
  version '1.4.8.4259'
  sha256 'aaf6c3eff0bfaa29fcccbfea3ef37abc2f86c46bf8a573b59eb5390f81692b01'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '516dca99d2fded771839542b895a83101e10f701ffd331a47693f6a49be64789'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
