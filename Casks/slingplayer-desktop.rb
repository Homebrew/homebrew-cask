cask 'slingplayer-desktop' do
  version '5.0.92'
  sha256 '8abd54ef4525ed31b6da7622ed3198d7963b32ce4f7966fbbd267f43f99f8e39'

  # slingmedia.com is the official download host per the vendor homepage
  url "http://download.slingmedia.com/SlingplayerDesktop/Mac/#{version}/SlingplayerDesktop-#{version}.dmg"
  appcast 'http://qaautoupdate.sling.com/plugin_binary/downloads/SPD/Mac/DevAppcast/SlingPlayerDesktopAppcast.xml',
          :sha256 => '9e029216959c0c1b428ac4df47f49cf9b2382ffc622b2b1038625a9be5ae143b'
  name 'Slingplayer Desktop'
  homepage 'http://www.slingbox.com'
  license :gratis

  app 'Slingplayer Desktop.app'
end
