cask "handbrake" do
  version "1.8.1"
  sha256 "6ce7a063acdd8c4c55b79543181d1e8ff251d0d40e8d4e573d218708473cd4a8"

  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrake-#{version}.dmg",
      verified: "github.com/HandBrake/HandBrake/"
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "HandBrake.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*",
    "~/Library/Application Support/HandBrake",
    "~/Library/Caches/fr.handbrake.HandBrake",
    "~/Library/Preferences/fr.handbrake.HandBrake.plist",
    "~/Library/Saved Application State/fr.handbrake.HandBrake.savedState",
  ]
end
