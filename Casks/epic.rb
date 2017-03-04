cask 'epic' do
  version '49.0.2575.1'
  sha256 'a4151a95705685257c7b38a1c6d6496a9a82743c49bdc3ed9c12957cf714e67b'

  # s3.amazonaws.com/epicprivacybrowser was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/epicprivacybrowser/mac/Epic_OSX_#{version}.zip"
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          checkpoint: 'baa4248683b2bde4cb5124bada0f5f7330ed865ef266ef7a7014729269debdf3'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'

  app 'Epic.app'
end
