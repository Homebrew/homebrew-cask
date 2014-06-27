class Kdiff3 < Cask
  # note: "3" is not a version number, but an intrinsic part of the product name (3-way diff)
  version '0.9.97'
  sha256 '9be995cced9d3365d2f7f47f01a28bfc47172da7d049014617976e596756d5ee'

  url 'https://downloads.sourceforge.net/sourceforge/kdiff3/kdiff3_0.9.97_MacOS_64bit.dmg'
  homepage 'http://kdiff3.sourceforge.net/'

  link 'kdiff3.app'
  binary 'kdiff3.app/Contents/MacOS/kdiff3'
end
