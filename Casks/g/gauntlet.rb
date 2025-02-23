cask "gauntlet" do
  version "16"
  sha256 "7e06ae53a2ee3b6da92daa96a82a171e6faa616a8fe521f90d125f300be368ec"

  url "https://github.com/project-gauntlet/gauntlet/releases/download/v#{version}/gauntlet-universal-macos.dmg"
  name "Gauntlet"
  desc "Open-source cross-platform application launcher"
  homepage "https://github.com/project-gauntlet/gauntlet"

  app "Gauntlet.app"

  uninstall quit: "dev.project-gauntlet.Gauntlet"
  uninstall login_item: "Gauntlet"

  zap trash: [
    "~/Library/Application Support/dev.project-gauntlet.Gauntlet",
    "~/Library/Caches/dev.project-gauntlet.Gauntlet",
  ]
end
