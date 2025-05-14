cask "bitrix24" do
  arch arm: "macos_arm", intel: "desktop"

  # NOTE: "24" is not a version number, but an intrinsic part of the product name
  version "17.0.17.84"
  sha256 :no_check

  url "https://dl.bitrix24.com/b24/bitrix24_#{arch}.dmg"
  name "Bitrix24"
  desc "Online workspace for your business"
  homepage "https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app"

  livecheck do
    url "https://www.bitrix24.com/osx_version.php"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Bitrix24.app"

  zap trash: [
    "~/.bxd",
    "~/Library/Application Scripts/com.bitrixsoft.bitrix24desktop",
    "~/Library/Application Scripts/com.bitrixsoft.bitrix24desktop.finder-ext",
    "~/Library/Containers/com.bitrixsoft.bitrix24desktop.finder-ext",
    "~/Library/Group Containers/com.bitrixsoft.bitrix24desktop",
    "~/Library/HTTPStorages/com.bitrixsoft.bitrix24desktop",
    "~/Library/Preferences/com.bitrixsoft.bitrix24desktop.plist",
  ]
end
