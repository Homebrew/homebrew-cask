cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.0-0"
  sha256 arm:   "aa9c2d5c056b0407439caf452e4bcf75b56d3c866901a674b2b4fe1f0edc90d0",
         intel: "2ed10799d4b122258d1c802457272c34c8668d2ed55a4322c0b718e78e1f4356"

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
