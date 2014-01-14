class Ioquake3 < Cask
  url 'http://ioquake3.org/files/1.36/ioquake3%201.36.dmg'
  homepage 'http://ioquake3.org/'
  version '1.36'
  sha1 'f1dc424432760f76cf522d6dbfe071a8753f9a23'
  link 'ioquake3'
  caveats <<-EOS.undent
    To complete the installation of #{title}, you will have to copy the file
    'pak0.pk3' from your Quake 3 Arena installation support directory into
    ~/Applications/ioquake3/baseq3.
    EOS
end
