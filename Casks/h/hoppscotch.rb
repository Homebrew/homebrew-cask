cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.6.0-0"
  sha256 arm:   "10a9468998cefb2f5daf0d0bdc3911c99d04643a104dd9cd5ef3a9997b6353c6",
         intel: "0d603b15f40ca4f2bbd6e21beb4b93f25d4c900d2b2ee661eaa7934d403262ff"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
  depends_on :macos

  app "Hoppscotch.app"

  uninstall quit: "io.hoppscotch.desktop"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
