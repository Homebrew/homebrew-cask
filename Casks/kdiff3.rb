class Kdiff3 < Cask
  # note: "3" is not a version number, but an intrinsic part of the product name (3-way diff)
  version '0.9.98'
  sha256 '3cbfb7f30989af2b28658a5f9f331c1a20275f16f42f3126119913b65cb06777'

  url 'https://downloads.sourceforge.net/project/kdiff3/kdiff3/0.9.98/kdiff3-0.9.98-MacOSX-64Bit.dmg'
  homepage 'http://kdiff3.sourceforge.net/'

  app 'kdiff3.app'
  binary 'kdiff3.app/Contents/MacOS/kdiff3'
end
