cask :v1 => 'blender' do
  version '2.72b'
  sha256 'b015f030c416d4aa09617f33e93bba3429624dbbb203fb4b6e728257e61b3d5c'

  url "http://download.blender.org/release/Blender2.72/blender-#{version}-OSX_10.6-x86_64.zip"
  homepage 'http://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
