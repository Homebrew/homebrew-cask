cask "mstystudio" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 :no_check

  url "https://next-assets.msty.studio/app/latest/v3/mac/MstyStudio_#{arch}.dmg"
  name "Msty Studio"
  desc "AI platform with local and online models"
  homepage "https://msty.ai/"

  livecheck do
    url "https://next-assets.msty.studio/app/latest/v3/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "MstyStudio.app"

  uninstall quit: "com.MstyStudio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/mstystudio.sfl*",
    "~/Library/Application Support/MstyStudio",
    "~/Library/Caches/MstyStudio*",
    "~/Library/Caches/mstystudio-updater",
    "~/Library/HTTPStorages/MstyStudio",
    "~/Library/Logs/MstyStudio",
    "~/Library/Preferences/ByHost/MstyStudio.ShipIt.*.plist",
    "~/Library/Preferences/MstyStudio.plist",
  ]
end
