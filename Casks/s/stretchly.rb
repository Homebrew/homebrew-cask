cask "stretchly" do
  arch arm: "-arm64"

  version "1.20.0"
  sha256 arm:   "277b8c5649aad01182f224abcda21b154775531ca4aacd71d6cff359d435584d",
         intel: "799f14585d0220abdd500e57cd9775a48505f894cbd2eca83f57c9cf0a45f620"

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
