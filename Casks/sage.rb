class Sage < Cask
  url 'http://boxen.math.washington.edu/home/sagemath/sage-mirror/osx/intel/sage-6.1.1-x86_64-Darwin-OSX_10.9_x86_64-app.dmg'
  homepage 'http://www.sagemath.org/'
  version '6.1.1'
  sha256 'adb970fc837f67e1db73fb78f1ef142e536ecf0553672440ca485c33745fb33e'
  link 'Sage-6.1.1.app'
  binary 'Sage-6.1.1.app/Contents/Resources/sage/sage'
  caveats do
    files_in_usr_local
  end
end
