cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.0.1"
  sha256 arm:   "70939cf98dce448d2dc3a7037f6794b3c8d8ea88f1396f9099012dfb57c07ad0",
         intel: "0ebbfa279afafada2097fc4d94c2d300840cbf090019c1051cad96d3fea44a19"

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
  depends_on macos: ">= :monterey"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
