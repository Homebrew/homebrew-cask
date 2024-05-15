cask "remarkable" do
  version "3.9.0.816,53477376,qt6-adNuyOp3UK"
  sha256 "fe8d5c1643ea0d99fbfd20ec7874ecee292f0ca7da3882dac64005ab97052227"

  url "https://updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/#{version.csv.second}/reMarkable-#{version.csv.first}.#{version.csv.third}.dmg",
      verified: "updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/"
  name "Remarkable"
  desc "View, Screen Share, organise, import, and download files to a reMarkable device"
  homepage "https://remarkable.com/"

  deprecate! date: "2024-01-17", because: :moved_to_mas

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "reMarkable.app"

  zap trash: [
    "~/Library/Application Support/remarkable",
    "~/Library/Caches/com.remarkable.desktop",
    "~/Library/Caches/remarkable",
    "~/Library/Preferences/com.remarkable.desktop.plist",
    "~/Library/Saved Application State/com.remarkable.desktop.savedState",
  ]
end
