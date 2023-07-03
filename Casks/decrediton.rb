cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0"
  sha256 arm:   "2702cbbe7767095aab4deefae877ed55868d3a07855d48a0937afd1756f997ca",
         intel: "7905103ad2f36d718cd07ac74f46a44b581431c54688219611c49d8725258b7c"

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
