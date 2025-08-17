cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.16.1"
  sha256 arm:   "4c06bdcbd4ffef6bf9a677cbaa5a3cc46bf6d3733b2c47dc5591fbc73f6c8faa",
         intel: "c8d182eff9a2599629932bd9bd4dd3840494316786205e679d3f4bdb42c50324"

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
