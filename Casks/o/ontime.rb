cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.10.6"
  sha256 arm:   "c7baad5a2011b5070802387bbbf095e4c0099e497a8d9d7eb35f1c540bb0455a",
         intel: "7e7c33ec5077a78be32467405e96397fc2801ce16279b34084cafb05098281d3"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
