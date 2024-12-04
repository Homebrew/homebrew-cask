cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.9.1"
  sha256 arm:   "00614c97432c5d2704f8fa2d64ae60bdba17b73853101b377144dea54703f94c",
         intel: "ea1ca30c96004110583f441b93128fe774da4d3a1f352d3c9be78720d64441b4"

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
