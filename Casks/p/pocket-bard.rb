cask "pocket-bard" do
  arch arm: "aarch64", intel: "amd64"
  livecheck_arch = on_arch_conditional arm: "aarch64", intel: "amd64"

  version "3.1.15,232"
  sha256 arm:   "bcc4764e6ecef1554db1f4bddedc0890e6a2397df28d91a8eb999b361662c892",
         intel: "039c40ad73efc8853bca38f2b26d18aa2b213d9b478833e3282a17ebf8d632ae"

  url "https://downloads.pocketbard.app/desktop/channels/stable/pocketbard-#{version.csv.first}-#{version.csv.second}-mac-#{arch}.zip"
  name "Pocket Bard"
  desc "Easiest immersive audio solution for your TTRPG toolkit"
  homepage "https://www.pocketbard.app/"

  livecheck do
    url "https://downloads.pocketbard.app/desktop/channels/stable/appcast-#{livecheck_arch}.rss"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version.split(".").last}"
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Pocket Bard.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pocketbard.pocketbard.sfl*",
    "~/Library/Application Support/pocketbard",
    "~/Library/Caches/com.pocketbard.pocketbard",
    "~/Library/HTTPStorages/com.pocketbard.pocketbard",
    "~/Library/Preferences/com.pocketbard.pocketbard.plist",
    "~/Library/Saved Application State/com.pocketbard.pocketbard.savedState",
  ]
end
