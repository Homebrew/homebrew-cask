cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "25ce807e72f3639e4626399fe504078060618ff9dddf352d2d1f6649d787c91e",
         intel: "7ac8ca6ee61dd01196f51eca9aebc2bd97be6872ac816dd2c41160e9a30776a9"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos-#{arch}.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "CNCjs.app"

  zap trash: [
    "~/.cncjs-sessions",
    "~/Library/Application Support/CNCjs",
    "~/Library/Preferences/org.cncjs.plist",
    "~/Library/Saved Application State/org.cncjs.savedState",
  ]
end
