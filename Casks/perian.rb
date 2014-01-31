class Perian < Cask
  url 'http://perian.cachefly.net/Perian_1.2.3.dmg'
  homepage 'http://www.perian.org/'
  version '1.2.3'
  sha1 'aa0a6a3f7c65cb9f17dca138d3db0be059c8da0e'
  prefpane 'Perian.prefPane'
  caveats <<-EOS.undent
    Perian development officially stopped as of 2012, and 1.2.3 was the final released version.

    See the Perian homepage for the full message from the development team, which points to some alternatives.
    EOS
end
