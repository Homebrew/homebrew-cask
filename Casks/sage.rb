class Sage < Cask
  version '6.2'
  sha256 'b17783df4967432c6545cb7fd8751f9d7d3e886063a5f51ef70e4dbef4311e22'

  url 'http://boxen.math.washington.edu/home/sagemath/sage-mirror/osx/intel/sage-6.2-x86_64-Darwin-OSX_10.9_x86_64-app.dmg'
  homepage 'http://www.sagemath.org/'

  link 'Sage-6.2.app'
  binary 'Sage-6.2.app/Contents/Resources/sage/sage'
  caveats do
    files_in_usr_local
  end
end
