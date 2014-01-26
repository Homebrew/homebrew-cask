class Sage < Cask
  url 'http://boxen.math.washington.edu/home/sagemath/sage-mirror/osx/intel/sage-6.0-x86_64-Darwin-OSX_10.6_x86_64-app.dmg'
  homepage 'http://www.sagemath.org/'
  version '6.0'
  sha1 '0690169fb945237b3b5ef854e5ed460baae55a1c'
  link 'Sage-6.0.app'
  binary 'Sage-6.0.app/Contents/Resources/sage/sage'
  caveats do
    files_in_usr_local
  end
end
