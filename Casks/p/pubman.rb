cask "pubman" do
  arch arm: "-arm64"

  version "2025.6.1"
  sha256 arm:   "ff4842d6219dc85e9ab361400390b509d3d2f4a51880f1620be570d5434e3ec7",
         intel: "fd378156b3c41874b63e3530a9351ebeb3778e2d66bfd658afe378ca5a27a131"

  url "https://github.com/DrawnToDigital/pubman/releases/download/v#{version}/PubMan-#{version}#{arch}.dmg"
  name "PubMan 3D Model Publishing"
  desc "Draft, Track, and Publish 3D models to multiple platforms"
  homepage "https://github.com/DrawnToDigital/pubman"

  depends_on macos: ">= :big_sur"

  app "PubMan.app"

  zap trash: [
    "~/Library/Application Support/PubMan",
    "~/Library/Logs/PubMan",
    "~/Library/Preferences/digital.drawnto.pubman.electron.plist",
  ]
end
