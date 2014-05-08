class Parallels < Cask
  url 'http://www.parallels.com/directdownload/pd9'
  homepage 'http://www.parallels.com/products/desktop/'
  version 'latest'
  sha256 :no_check
  install 'Install.mpkg'
end
