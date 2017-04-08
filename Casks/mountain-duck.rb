cask 'mountain-duck' do
  version '1.8.3.6544'
  sha256 'e27704f34a24e44827709792fa126971679995ce267ee0f3d211e5bae090a571'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'ff9534f358fed0dc0fe7b03ff97736b08c6442dcf326f843204926a49dfa5a46'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
