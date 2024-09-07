cask "gauntlet" do
  version "8"
  sha256 "27c2593d2d7867f28ae9a3c492b3f64857b589623efb109513e3cfa1004f01c0"

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
