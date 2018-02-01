cask 'my-image-garden' do
  version '3.6.1'
  sha256 '5adf7b01ad089e7e665a12fbd5a2fb4df493c9cafe727736c8e23cd3948b4428'

  # c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/3/0200004873/06/mmig-mac-#{version.dots_to_underscores}-ea11.dmg"
  name 'Canon My Image Garden'
  homepage 'http://support-asia.canon-asia.com/?personal'

  depends_on macos: '>= :mountain_lion'

  pkg "My Image Garden V#{version.no_dots}.pkg"

  uninstall pkgutil: 'jp.co.canon.MyImageGarden',
            quit:    'jp.co.canon.MyImageGarden'
end
