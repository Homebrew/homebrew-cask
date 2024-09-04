cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.4"
  sha256 arm:   "59742db32e18e2f97e87db5be824a258be8b165ec176e6a19538c69944ef89e4",
         intel: "93f27d14776d31e9f004b1ed727dcccda2c4fe6a22e218f19527beacc1c9f3c5"

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
