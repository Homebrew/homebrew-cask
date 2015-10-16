cask :v1_1 => 'perian' do
  version '1.2.3'
  sha256 '4d1738104613ab4a7322637584ce7b851e4ef85888895360ad827a5f27c62e08'

  # cachefly.net is the official download host per the vendor homepage
  url "https://perian.cachefly.net/Perian_#{version}.dmg"
  name 'Perian'
  homepage 'http://www.perian.org/'
  license :gpl

  prefpane 'Perian.prefPane'

  depends_on :cask => 'caskroom/versions/quicktime-player7'

  caveats do
    discontinued
  end
end
