cask "gauntlet" do
  version "11"
  sha256 "501811a87e9ff38c802f1d3313dfaaa871ac5b79364e875223b2629060254bbb"

  url "https://github.com/project-gauntlet/gauntlet/releases/download/v#{version}/gauntlet-aarch64-macos.dmg"
  name "Gauntlet"
  desc "Open-source cross-platform application launcher"
  homepage "https://github.com/project-gauntlet/gauntlet"

  depends_on arch: :arm64

  app "Gauntlet.app"

  uninstall quit: "dev.project-gauntlet.Gauntlet"
  uninstall login_item: "Gauntlet"

  zap trash: [
    "~/Library/Application Support/dev.project-gauntlet.Gauntlet",
    "~/Library/Caches/dev.project-gauntlet.Gauntlet",
  ]
end
