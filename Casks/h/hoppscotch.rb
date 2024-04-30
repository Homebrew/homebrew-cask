cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.2-1"
  sha256 arm:   "fd26b9d71fc7cb898ec4d2feeabfb9b24fdc1788816eea7d501696ab3b27ac13",
         intel: "eaf9b7a503e0e4e291b4fe96d42350c72e1f8bd9e2c386389d78daae0c07c6e0"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://github.com/hoppscotch/hoppscotch"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
