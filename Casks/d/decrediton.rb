cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.5"
  sha256 arm:   "f1c7ab512666ae29f146e67cb7c32f2979abffe7b18443eb2ff684a9726fa312",
         intel: "116575be3f4b8baa56c47e49e7acbc1d35f67c434e31bc3b9c2cdb2b599a54a5"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-darwin-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"

  depends_on macos: ">= :high_sierra"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
