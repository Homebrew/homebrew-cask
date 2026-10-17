cask "steamac" do
  version "1.9.1"
  sha256 "07a90ddfdf12ad0616c6a6bc2310114772ef5e23da47a926fee80c9edd29bcb5"

  url "https://github.com/fxgl/steamac/releases/download/v#{version}/FX-Steam-Launcher-#{version}.dmg"
  name token
  name "FX Steam Launcher"
  desc "Valve's official ARM64 SteamOS"
  homepage "https://fxgl.github.io/steamac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "FX Steam Launcher.app"

  zap trash: [
    "#{appdir}/steamos.img",
    "~/Library/Application Support/es.fxgam.steamac",
    "~/Library/Application Support/es.fxgam.steamac/steamos.img",
    "~/Library/Caches/es.fxgam.steamac",
    "~/Library/Logs/es.fxgam.steamac",
    "~/Library/Preferences/es.fxgam.steamac.plist",
  ]
end
