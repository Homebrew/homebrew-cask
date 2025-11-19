cask "stretchly" do
  arch arm: "-arm64"

  version "1.19.0"
  sha256 arm:   "58891390454002d8f5ca60d1a87ac1a9e8d2afeaac6af4d0c3edf96614420fb4",
         intel: "faa363b1f4c85c47bac9fe5ea1b4518c0063ad71b97885ab2e7673c826d3395e"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Stretchly.app"

  uninstall quit: "net.hovancik.stretchly"

  zap trash: [
    "~/Library/Application Support/Stretchly",
    "~/Library/Logs/Stretchly",
    "~/Library/Preferences/net.hovancik.stretchly.plist",
  ]
end
