cask "bitrix24" do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version "10.0.95.51"
  sha256 "d3335dad47fbf7df779e354966fb6c35b39e786ae469a3e77e475ad3f3fe4775"

  url "https://dl.bitrix24.com/b24/bitrix24_desktop.dmg"
  appcast "https://www.bitrix24.com/osx_version.php"
  name "Bitrix24"
  homepage "https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app"

  app "Bitrix24.app"
end
