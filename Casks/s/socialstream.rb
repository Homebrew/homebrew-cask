cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.3.113"
  sha256 arm:   "e267d7089b5ecf61878ba3ff833944a66d43872400450cf7ff5dc53caa3a568f",
         intel: "1ec798aeb54557e8c677cb8d98f89d619b8f5b9b69a3654eb7e2f6f0cb1546fc"

  url "https://github.com/steveseguin/social_stream/releases/download/v#{version}/socialstreamninja_mac_v#{version}_#{arch}.dmg",
      verified: "github.com/steveseguin/social_stream/"
  name "Social Stream"
  name "Social Stream Ninja"
  desc "Consolidate, control, and customise live social messaging streams"
  homepage "https://socialstream.ninja/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "socialstream.app"

  zap trash: [
    "~/Library/Application Support/socialstream",
    "~/Library/Preferences/socialstream.electron.plist",
    "~/Library/Saved Application State/socialstream.electron.savedState",
  ]
end
