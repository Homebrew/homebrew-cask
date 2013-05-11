class Blender < Cask
  url 'http://download.blender.org/release/Blender2.67/blender-2.67-OSX_10.6-x86_64.zip'
  homepage 'http://www.blender.org/'
  version '2.67'
  sha1 'de0039778749c6cbd0ddc49c5ae29f597b731ea2'
  link :app, 'blender.app', 'blenderplayer.app'
end
