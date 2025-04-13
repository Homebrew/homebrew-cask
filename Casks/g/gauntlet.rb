cask "gauntlet" do
  version "18"
  sha256 "5e69a19b95cd92634e5baf35cd1947ac2847099395a1a8228ba9f29608a81b24"

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
