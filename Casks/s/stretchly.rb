cask "stretchly" do
  arch arm: "-arm64"

  version "1.18.1"
  sha256 arm:   "dd642f02fef1e9a9b73c83b941a91611cf5a467ce2a5173e48d8d4e46710e674",
         intel: "e211ecc7e24f76d4d59d8b295328cc4905f6aa0dd3fd5ba3ca64eed8bedffc1a"

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
