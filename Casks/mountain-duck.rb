cask 'mountain-duck' do
  version '1.4.3.4134'
  sha256 '3240d25a111d41af854781e024dd7a28d654b0e89a3c0fa4a56d09d52a7be739'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '3921c747921b0d65cb478a00be846bc6ba60fe1a98143697b67d04155d3ae21b'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
