cask "bitrix24" do
  # NOTE: "24" is not a version number, but an intrinsic part of the product name
  version "14.4.0.75"
  sha256 :no_check

  url "https://dl.bitrix24.com/b24/bitrix24_desktop.dmg"
  name "Bitrix24"
  desc "Online workspace for your business"
  homepage "https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app"

  livecheck do
    url "https://www.bitrix24.com/osx_version.php"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Bitrix24.app"
end
