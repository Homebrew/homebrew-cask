cask "handbrake" do
  version "1.8.0"
  sha256 "e203108deaa8eda471fc6d27ca31b361cdd8bfe14ae41602d3581872e11da1a0"

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
