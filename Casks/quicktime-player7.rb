cask 'quicktime-player7' do
  # note: "7" is specified to differiante from the next iteration, QuickTime Player X
  version '7.6.6'
  sha256 '954c2376d2d747821614dc802249cf3c708a4792abed08945d7261de3894e759'

  url 'http://support.apple.com/downloads/DL923/en_US/QuickTimePlayer7.6.6_SnowLeopard.dmg'
  name 'QuickTime Player 7'
  homepage 'https://support.apple.com/kb/dl923'

  depends_on macos: '>= :snow_leopard'

  pkg 'QuickTimePlayer7.6.6_SnowLeopard.pkg'

  uninstall pkgutil: 'com.apple.pkg.QuickTimePlayer7.6.6_SnowLeopard'
end
