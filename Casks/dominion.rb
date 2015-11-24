cask :v1 => 'dominion' do
  version '2.0.44.2'
  sha256 '3a6fecab499a5b1d1f4a637d2418a5c8bf5f627eafb59416c288124aeabc55a1'

  # makingfun.co is the official download host per the vendor homepage
  url "https://dominion.makingfun.co/Dominion%20#{version}.pkg"
  name 'Dominion'
  homepage 'https://www.playdominion.com/'
  license :gratis

  depends_on :macos => '>= :lion'

  pkg "Dominion #{version}.pkg"

  uninstall :pkgutil => 'com.makingfun.dominion'
end
