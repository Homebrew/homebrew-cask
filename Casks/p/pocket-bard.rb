cask "pocket-bard" do
  arch arm: "aarch64", intel: "amd64"
  livecheck_arch = on_arch_conditional arm: "aarch64", intel: "amd64"

  version "3.1.16,234"
  sha256 arm:   "5c6ae9317e9fb7655ffcb3f4deda78dfc1fddcab118937d89d56a8fa57c55f19",
         intel: "604838f5433bc86548f836c3580d345a0fb07b6d8d6e2d6c920db91f139978da"

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
