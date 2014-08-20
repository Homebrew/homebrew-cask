class Sage < Cask
  version '6.3'
  sha256 '024a326d51b6a5878d8e60512172199ee5d3db35d850d7a784f42935beeeb540'

  url 'http://boxen.math.washington.edu/home/sagemath/sage-mirror/osx/intel/sage-6.3-x86_64-Darwin-OSX_10.9_x86_64-app.dmg'
  homepage 'http://www.sagemath.org/'

  link 'Sage-6.3.app'
  binary 'Sage-6.3.app/Contents/Resources/sage/sage'
  caveats do
    files_in_usr_local
  end
end
