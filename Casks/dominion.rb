cask 'dominion' do
  version '2.0.44.2'
  sha256 '3a6fecab499a5b1d1f4a637d2418a5c8bf5f627eafb59416c288124aeabc55a1'

  # dominion.makingfun.co was verified as official when first introduced to the cask
  url "https://dominion.makingfun.co/Dominion%20#{version}.pkg"
  name 'Dominion'
  homepage 'https://www.playdominion.com/'

  depends_on macos: '>= :lion'

  pkg "Dominion #{version}.pkg"

  uninstall pkgutil: 'com.makingfun.dominion'
end
