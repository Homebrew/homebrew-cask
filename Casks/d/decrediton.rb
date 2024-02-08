cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1"
  sha256 arm:   "1dfcd6d5fa42aed03e56c90a908ef0afb5080344487f6ccd57c9ad75ea314ce9",
         intel: "25980c946e846d11689131358ef98079dbd0af9fa263765c8147009b50c1bfa4"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
