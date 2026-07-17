cask "stretchly" do
  arch arm: "-arm64"

  version "1.22.0"
  sha256 arm:   "2bc2107001af9f1bcad2b5dcef3a197428aad8b085d2ef9dc685df17800dd291",
         intel: "387cca7a0c1e422c5c5c5325864a73e6cb6e0fb6517fdbaa826921c59766d681"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Stretchly.app"

  uninstall quit: "net.hovancik.stretchly"

  zap trash: [
    "~/Library/Application Support/Stretchly",
    "~/Library/Logs/Stretchly",
    "~/Library/Preferences/net.hovancik.stretchly.plist",
  ]
end
