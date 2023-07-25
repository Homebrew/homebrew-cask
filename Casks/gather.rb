cask "gather" do
  arch arm: "-arm64"

  version "0.10.1"
  sha256 arm:   "dd6f6fbbc15065a3c02fe6a77c8af4d7ddc33af2d10f20b2b2e53369699f15c3",
         intel: "8a593c90eea329c67ec58b15856cb82cc9e9b69761a6f611fd84766b6a6f9d4e"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases/"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
