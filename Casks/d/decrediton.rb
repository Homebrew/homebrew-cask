cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.3"
  sha256 arm:   "4cb2250aac882ea46ba2a2f9487e1a806c2f4a82585c5ae74e2bd24c77048f88",
         intel: "60daff250e68d512a35f110924918f45e3d6b6c8e337f5782319b3e9daff353f"

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
