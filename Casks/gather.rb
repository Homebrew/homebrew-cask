cask "gather" do
  arch arm: "-arm64"

  version "0.3.16"
  sha256 arm:   "e0260b9abbfd6518fd22f7f582a399979d6fb939cbabaa1369eb7cea744f088d",
         intel: "2d46d6a7ffa3ee74b445082f119dad9a5d7da0e509de7506c4e55b9bda91b558"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
