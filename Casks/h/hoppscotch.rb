cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.4.0-0"
  sha256 arm:   "8611170d7996257e23500e7d66b6e24f1300abd80f5c8fc70875824141376914",
         intel: "6d7390b0db903ab6f12503405c530d0c3f020e90add9598f1c48e35cb7d0b494"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
