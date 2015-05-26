cask :v1 => 'slingplayer-desktop' do
  version '5.0.92'
  sha256 '8abd54ef4525ed31b6da7622ed3198d7963b32ce4f7966fbbd267f43f99f8e39'

  # slingmedia.com is the official download host per the vendor homepage
  url "http://download.slingmedia.com/SlingplayerDesktop/Mac/#{version}/SlingplayerDesktop-#{version}.dmg"
  name 'Slingplayer Desktop'
  homepage 'http://www.slingbox.com'
  license :gratis

  app 'Slingplayer Desktop.app'
end
