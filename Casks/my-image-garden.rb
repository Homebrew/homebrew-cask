cask 'my-image-garden' do
  version '3.6.2'
  sha256 'ed4a83f03401ba79bc5f744473c67167124ffc8a2170e629b9385b5fdef8a85c'

  # c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/3/0200004873/07/mmig-mac-#{version.dots_to_underscores}-ea11.dmg"
  name 'Canon My Image Garden'
  homepage 'https://support-asia.canon-asia.com/?personal'

  depends_on macos: '>= :mountain_lion'

  pkg "My Image Garden V#{version.no_dots}.pkg"

  uninstall pkgutil: 'jp.co.canon.MyImageGarden',
            quit:    'jp.co.canon.MyImageGarden'
end
