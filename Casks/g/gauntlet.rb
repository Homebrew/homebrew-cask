cask "gauntlet" do
  version "9"
  sha256 "3234f34d627d5ee166e9c21ba1df909607e682b4e6e080c732533184e1e937c1"

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
