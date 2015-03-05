cask :v1 => 'perian' do
  version '1.2.3'
  sha256 '4d1738104613ab4a7322637584ce7b851e4ef85888895360ad827a5f27c62e08'

  # cachefly.net is the official download host per the vendor homepage
  url "https://perian.cachefly.net/Perian_#{version}.dmg"
  name 'Perian'
  homepage 'http://www.perian.org/'
  license :gpl

  prefpane 'Perian.prefPane'

  depends_on :cask => 'caskroom/versions/quicktime-player7'

  caveats <<-EOS.undent
    Perian development officially stopped as of 2012, and 1.2.3 was the final released version.

    See the Perian homepage for more information (http://www.perian.org/).
  EOS
end
