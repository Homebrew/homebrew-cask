cask "gauntlet" do
  version "20"
  sha256 "86bfad8a08ce24651cbc551ddd2d877d7917e622611b5d62bcc4d16b21c9fa9d"

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
