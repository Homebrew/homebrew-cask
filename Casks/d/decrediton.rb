cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.1"
  sha256 arm:   "edcfbc2e614e3a2e1644ab418a84b51e1f48ec0c8f5f06291aa67286a7ded4f1",
         intel: "8f20dd6e2d397c5e6e0e34a462e31a7eb9fbccdd82157b28667e6b3bb3a7eec1"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-darwin-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
