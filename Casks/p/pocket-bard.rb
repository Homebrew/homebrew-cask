cask "pocket-bard" do
  arch arm: "aarch64", intel: "amd64"
  livecheck_arch = on_arch_conditional arm: "aarch64", intel: "amd64"

  version "3.1.17,236"
  sha256 arm:   "7676c3631d1ec7046b86e3d0a5d4966f1d338e54712fd1af4b5c8f4a6fc72f89",
         intel: "b8e10d1a26c31a92956ee0cd032d14d52105573933b47182876e408e54251451"

  url "https://downloads.pocketbard.app/desktop/channels/stable/pocketbard-#{version.csv.first}-#{version.csv.second}-mac-#{arch}.zip"
  name "Pocket Bard"
  desc "TTRPG ambient audio and sound effects"
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
    "~/Library/Application Support/com.pocketbard.pocketbard",
    "~/Library/Caches/com.pocketbard.pocketbard",
    "~/Library/HTTPStorages/com.pocketbard.pocketbard",
    "~/Library/Preferences/com.pocketbard.pocketbard.plist",
  ]
end
