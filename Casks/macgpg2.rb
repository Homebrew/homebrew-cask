class Macgpg2 < Cask
  url 'https://s3.amazonaws.com/gpgtools/MacGPG2-2.0.19.dmg'
  homepage 'https://gpgtools.org/macgpg2/index.html'
  version '2.0.19'
  sha1 '3fda54bbb5df5a8c00b5857a7c8ee9f0b29408f9'
  install 'MacGPG2.pkg'
  uninstall 'Uninstall.app'
end
