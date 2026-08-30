cask "stretchly" do
  arch arm: "-arm64"

  version "1.22.1"
  sha256 arm:   "ca307fe7f8d42776152bd6da39a3897061ece162cd83a2012923b827ef79f30b",
         intel: "84e1d3c1d163e849d46a390f8201fef55808eb674da43578d781661f7a4db88a"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg"
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
