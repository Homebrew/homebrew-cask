class Blender < Cask
  version '2.72a'
  sha256 '8c6d9260ca2ab87cfb37a34f4225a05441497dbc274872e85624509a70fae3b0'

  url "http://download.blender.org/release/Blender2.72/blender-#{version}-OSX_10.6-x86_64.zip"
  homepage 'http://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
