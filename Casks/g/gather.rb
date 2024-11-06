cask "gather" do
  arch arm: "-arm64"

  version "1.18.0"
  sha256 arm:   "790a72d65e35f73d40ec58b268d71a08560366d94f9870be5bb742a49316e4db",
         intel: "d6caf3aaf9066aaa40204ab64232b77537f3d80ca5112ac9b4b58d4df265edbf"

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
