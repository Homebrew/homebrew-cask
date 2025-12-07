cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.38.0"
  sha256 arm:   "61b92d5d875d85227a9cbd8465ccf7fa0379d0b74592af5379229663b2b71f8b",
         intel: "7d4a02de2bb09195aa63862fe7762bc637d2dd298f1a10c04eea0f486b6197bb"

  on_arm do
    depends_on macos: ">= :ventura"
  end
  on_intel do
    depends_on macos: ">= :sequoia"
  end

  url "https://github.com/WerWolv/ImHex/releases/download/v#{version}/imhex-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/WerWolv/ImHex/"
  name "ImHex"
  desc "Hex editor for reverse engineers"
  homepage "https://imhex.werwolv.net/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "ImHex.app"

  zap trash: [
    "~/Library/Application Support/imhex",
    "~/Library/Preferences/net.WerWolv.ImHex.plist",
    "~/Library/Saved Application State/net.WerWolv.ImHex.savedState",
  ]
end
