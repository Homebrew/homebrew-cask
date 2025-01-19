cask "gauntlet" do
  version "13"
  sha256 "201b2a2e9bc6dafb2f59420cf88aa9ca6e3f3c364fe34a89d4f45a5c719ba193"

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
