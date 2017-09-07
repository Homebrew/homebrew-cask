cask 'jedit-x' do
  version '2.54'
  sha256 '3bd469b2d3702090d70444eba0a2dcd7e1bff4f498d2ff6aff7a9b293b5264d7'

  # artman21.org was verified as official when first introduced to the cask
  url "http://www.artman21.org/download/JeditX#{version.no_dots}.dmg"
  name 'Jedit X'
  homepage 'http://www.artman21.com/en/jedit_x/'

  suite 'Jedit X Folder'
  app 'Jedit X.app'
end
