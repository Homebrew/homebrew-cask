cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '6.0.80'
  sha256 '17211ff29676e74ba2ad3745cb1aa73dbfb1a77f472dc82312545c1258525ff9'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '061d84a9bb8778ab8484b9745719017be847cb71d0459960681f5a35a8e11ae1'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
