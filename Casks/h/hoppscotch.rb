cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.1-0"
  sha256 arm:   "4972701b0f0f573e3e4c38efd19742751e864adafaf8db230fdaa2d389c50fb1",
         intel: "c3041b5cf1a28b933fd2b59beca9d6aebcc8398c57369d8e8f2c4d1d5cd63536"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
  depends_on :macos

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
