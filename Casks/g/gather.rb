cask "gather" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "6e856afb1c0770ff991f83b144308bf0f45bbbaafe367c80c97a70ff4fbf6d31",
         intel: "030a37789bb46ca3799fe07e258a83d003e80708a1674185f8be89dff3bcbe1c"

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
