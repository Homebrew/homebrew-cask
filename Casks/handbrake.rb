cask "handbrake" do
  version "1.6.1"
  sha256 "3af46b84c1101f1a7c098581c1070d47263563c49f327c3e4eb28040885e6863"

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
