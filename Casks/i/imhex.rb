cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.38.1"
  sha256 arm:   "cbe57f8f16fd9a63bf0bd393d2db695ed201948a8f9167fd10b4af96847b0ee8",
         intel: "4acd57408770cdfe533fb277f8746a5fdb9cb2048a9b7f8295931aafea97bd0e"

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
