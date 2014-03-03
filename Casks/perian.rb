class Perian < Cask
  url 'http://perian.cachefly.net/Perian_1.2.3.dmg'
  homepage 'http://www.perian.org/'
  version '1.2.3'
  sha256 '4d1738104613ab4a7322637584ce7b851e4ef85888895360ad827a5f27c62e08'
  prefpane 'Perian.prefPane'
  caveats <<-EOS.undent
    Perian development officially stopped as of 2012, and 1.2.3 was the final released version.

    See the Perian homepage for the full message from the development team, which points to some alternatives.
    EOS
end
