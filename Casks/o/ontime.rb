cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.15.2"
  sha256 arm:   "cdab79d7a0ddb1c62e47ecd4d8730f1fc42f97dfa99e934a401c6348c496a349",
         intel: "f0e50dbd18947b09361def8be15e05d49b01ebacff569cd40c52fa2cd81b85b4"

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
