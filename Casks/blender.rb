cask :v1 => 'blender' do
  version '2.73'
  sha256 'b95fc8caaf988a355242bd73bab44f7a95933826e49268c48bf46b9a672fa911'

  url "http://download.blender.org/release/Blender#{version}/blender-#{version}-OSX_10.6-x86_64.zip"
  homepage 'http://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
