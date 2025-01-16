cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.12.1-0"
  sha256 arm:   "8d8fcafde132dcb20462bba94d91e4180124c64b17f3d138c7bf242418ea5e44",
         intel: "08f0956c0e370532aaa2acd829ada021050b365710ce94156e774ac695eb1882"

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
