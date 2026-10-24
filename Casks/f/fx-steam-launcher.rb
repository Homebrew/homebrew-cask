cask "fx-steam-launcher" do
  version "1.9.1"
  sha256 "07a90ddfdf12ad0616c6a6bc2310114772ef5e23da47a926fee80c9edd29bcb5"

  url "https://github.com/fxgl/steamac/releases/download/v#{version}/FX-Steam-Launcher-#{version}.dmg"
  name "FX Steam Launcher"
  name "steamac"
  desc "ARM64 Steam Frame build of SteamOS running in a lightweight VM on Apple Silicon"
  homepage "https://fxgl.github.io/steamac"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "FX Steam Launcher.app"

  uninstall quit: "es.fxgam.steamac"

  zap trash: [
    "#{appdir}/steamos.img",
    "~/Library/Application Support/es.fxgam.steamac",
    "~/Library/Application Support/es.fxgam.steamac/steamos.img",
    "~/Library/Caches/es.fxgam.steamac",
    "~/Library/Logs/es.fxgam.steamac",
    "~/Library/Preferences/es.fxgam.steamac.plist",
  ]
end
