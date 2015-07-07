cask :v1 => 'cave-story' do
  version '0.0.8'
  sha256 '305e9ec85442e79e92c0e4fd2d8e6566c5e0ad8db46b50aad172f3e0c384a479'

  # nakiwo.com is the official download host per the vendor homepage
  url "http://www.nakiwo.com/attachments/doukutsu#{version.gsub('.','_')}.dmg"
  name 'Cave Story'
  name 'Doukutsu'
  name '洞窟物語'
  homepage 'http://www.cavestory.org'
  license :closed

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Doukutsu.app', :target => 'Cave Story.app'
end
