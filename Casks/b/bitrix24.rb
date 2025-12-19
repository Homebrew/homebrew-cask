cask "bitrix24" do
  # NOTE: "24" is not a version number, but an intrinsic part of the product name
  arch arm: "desktop_arm", intel: "desktop"

  version "19.0.23.89"
  sha256 :no_check

  url "https://dl.bitrix24.com/b24/bitrix24_#{arch}.dmg"
  name "Bitrix24"
  desc "Business management platform"
  homepage "https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app"

  livecheck do
    url "https://www.bitrix24.com/osx_version.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Bitrix24.app"

  zap trash: [
    "~/.bxd",
    "~/Library/Application Scripts/com.bitrixsoft.bitrix24desktop",
    "~/Library/Application Scripts/com.bitrixsoft.bitrix24desktop.finder-ext",
    "~/Library/Containers/com.bitrixsoft.bitrix24desktop.finder-ext",
    "~/Library/Group Containers/com.bitrixsoft.bitrix24desktop",
    "~/Library/HTTPStorages/com.bitrixsoft.bitrix24desktop",
    "~/Library/Preferences/com.bitrixsoft.bitrix24desktop*",
  ]
end
