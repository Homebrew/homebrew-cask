cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '5.0.26.38'
  sha256 '07124b45085322208e97c98a5a6f5d46d1f2da775ac0fba4c073b54e3d904d07'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '3c6f7bb642b97bd5d70c70e2f5e4f38187a842dc0b45dfa2b179d3d0959eddda'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
