cask "bitrix24" do
  # NOTE: "24" is not a version number, but an intrinsic part of the product name
  version "11.0.20.53"
  sha256 :no_check

  url "https://dl.bitrix24.com/b24/bitrix24_desktop.dmg"
  appcast "https://www.bitrix24.com/osx_version.php"
  name "Bitrix24"
  homepage "https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app"

  app "Bitrix24.app"
end
