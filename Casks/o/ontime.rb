cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.14.3"
  sha256 arm:   "751b2869292dbad7848e989d137efb970c730e325a267c6a0039023247a01f20",
         intel: "b2c6c2443be059c34aafb0c876e1a08fa660b9cce7d9f39d1d4d1e3e756e7747"

  url "https://github.com/cpvalente/ontime/releases/download/v.#{version}/ontime-macOS-#{arch}.dmg",
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
