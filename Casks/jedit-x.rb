cask 'jedit-x' do
  version '2.56'
  sha256 '32d9a99519eee645f1e60aef9d34f9f95192b1d8db4f149f353700733428eaf5'

  # artman21.org was verified as official when first introduced to the cask
  url "http://www.artman21.org/download/JeditX#{version.no_dots}.dmg"
  name 'Jedit X'
  homepage 'http://www.artman21.com/en/jedit_x/'

  suite 'Jedit X Folder'
  app 'Jedit X.app'
end
