class Kid3 < Cask
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.0.2'
  sha256 'a1b60a4eea11ca62001365dd28d418c595ce2d073dd4e0ba07bd28a94cb5c260'

  url 'https://downloads.sourceforge.net/sourceforge/kid3/kid3-3.0.2-Darwin.dmg'
  homepage 'http://kid3.sourceforge.net/'

  app 'Kid3.app'
end
