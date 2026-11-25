cask "pocket-bard" do
  arch arm: "aarch64", intel: "amd64"
  livecheck_arch = on_arch_conditional arm: "aarch64", intel: "amd64"

  version "3.2.4,245"
  sha256 arm:   "1af8fb566c29213fa75539c3e76c96c1bb071dcda1f21867e9cbfaca9c952371",
         intel: "a1695f640d83afe18acf250f0420c9a367638ed0ca12b9cd0099ac156ca54ba8"

  url "https://downloads.pocketbard.app/desktop/channels/stable/pocketbard-#{version.csv.first}-#{version.csv.second}-mac-#{arch}.zip"
  name "Pocket Bard"
  desc "TTRPG ambient audio and sound effects"
  homepage "https://www.pocketbard.app/"

  livecheck do
    url "https://downloads.pocketbard.app/desktop/channels/stable/appcast-#{livecheck_arch}.rss"
    strategy :sparkle do |item|
      build_number = item.version.split(".").last
      "#{item.short_version},#{build_number}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Pocket Bard.app"

  zap trash: [
    "~/Library/Application Support/com.pocketbard.pocketbard",
    "~/Library/Caches/com.pocketbard.pocketbard",
    "~/Library/HTTPStorages/com.pocketbard.pocketbard",
    "~/Library/Preferences/com.pocketbard.pocketbard.plist",
  ]
end
