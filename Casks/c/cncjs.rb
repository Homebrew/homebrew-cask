cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "b34a71c820d0e0e0addc15319ebd44596c88ca49b15bf534eb671f28e601a0f9",
         intel: "ebe40dfccf2d71e7fb4c0d6a84ab338744f48672e9279cd48fd9169ac3b1b034"

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
