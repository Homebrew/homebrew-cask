cask "stik" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "ac7a1da2a3a5fa1ea63d8e158bca726dc0af5401f36a276295842bd3cc7bb422",
         intel: "f15e2360df4b2d1b9708a9d5548a85777e1d313c1d4b60d98061786753d11cb8"

  url "https://github.com/0xMassi/stik_app/releases/download/v#{version}/Stik_#{version}_#{arch}.dmg",
      verified: "github.com/0xMassi/stik_app/"
  name "Stik"
  desc "Keyboard-first note capture app for macOS"
  homepage "https://www.stik.ink"

  depends_on macos: ">= :catalina"

  app "Stik.app"

  zap trash: [
    "~/Documents/Stik",
    "~/.stik",
    "~/Library/Caches/com.stik.app",
    "~/Library/WebKit/com.stik.app",
  ]
end
