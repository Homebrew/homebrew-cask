cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.6"
  sha256 arm:   "076c94ab4a21dbe6d4585296c31c2971e7c019eed07fff6d9abd891d130a2d28",
         intel: "f85ab4bc09937ab02033d7dd033a5d6a0e899adfdd35b839ad43bdab8f938277"

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

  app "CNCjs.app"

  zap trash: [
    "~/.cncjs-sessions",
    "~/Library/Application Support/CNCjs",
    "~/Library/Preferences/org.cncjs.plist",
    "~/Library/Saved Application State/org.cncjs.savedState",
  ]
end
