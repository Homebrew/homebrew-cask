cask 'm1' do
  version '1.7.1'
  sha256 '222d6fad47d09baae310767ba67ee822de1842ac24546bd1768144fc1da465af'

  # korg-datastorage.jp was verified as official when first introduced to the cask
  url "http://korg-datastorage.jp/Update/KLCDE/klc_m1_mac_#{version.no_dots}.dmg"
  name 'Korg M1'
  homepage 'http://korg.com/products/software/korg_legacy_collection/page_4.php'

  pkg 'KLC M1 Installer.pkg'

  uninstall pkgutil: 'jp.co.korg.pkg.M1',
            delete:  [
                       '/Library/Application Support/KORG',
                       '~/Library/Preferences/jp.co.korg.hyclm.prefs',
                     ],
            rmdir:   '~/Library/Application Support/KORG'

  zap trash: '~/Library/Application Support/KORG'
end
