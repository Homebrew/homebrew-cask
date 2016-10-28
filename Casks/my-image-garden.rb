cask 'my-image-garden' do
  version '3.5.1,ea11'
  sha256 '03c4f7a4ea0e39063f2f51fc51826ea53a60159cd0f0542d37a45367dddc8131'

  # gdlp01.c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/3/0200004873/03/mmig-mac-#{version.before_comma.dots_to_underscores}-#{version.after_comma}.dmg"
  name 'Canon My Image Garden'
  homepage 'http://support-asia.canon-asia.com/?personal'

  pkg "My Image Garden V#{version.before_comma.no_dots}.pkg"

  uninstall pkgutil: 'jp.co.canon.MyImageGarden',
            quit:    'jp.co.canon.MyImageGarden'
end
