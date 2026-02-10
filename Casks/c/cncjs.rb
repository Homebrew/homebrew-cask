cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.7"
  sha256 arm:   "8af45abd56b0e10627c54a4a368e8125d5abbb743615fed90950b4c64ee90fe6",
         intel: "3d07d646d6bb615293ac5eb57083d803dd55d6023bbf20da4de5795d92f21a9d"

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
