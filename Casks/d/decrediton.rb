cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.6"
  sha256 arm:   "1485fa3c0ec5ad2e9d02e84f0112a26fdbbf528b5f01ae765505db27e47bb8c3",
         intel: "84a274f8139cf852762adc06ac9d0ed143eabdcf3316035ed1bc7ccf1af58efd"

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
