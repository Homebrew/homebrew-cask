cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.16.0"
  sha256 arm:          "2d7aa2fbde8266e755b4e2573566738bcffba5c01d7d760045971f17d84b5ffc",
         intel:        "2d7aa2fbde8266e755b4e2573566738bcffba5c01d7d760045971f17d84b5ffc",
         arm64_linux:  "c016e2e550dede376ca1d5f1520a7fd04de3fdfa88561e8502fb0118ccb2dd01",
         x86_64_linux: "c2be1b654a6df980870213901785656075247e4e8e530545a97886dec4a2f050"

  on_macos do
    app "FilmCraft.app"

    zap trash: "~/Library/Application Support/FilmCraft"
  end
  on_linux do
    app_image "filmcraft-#{version}-linux-#{arch}.AppImage", target: "FilmCraft.AppImage"
  end

  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-#{version}-#{url_end}"
  name "FilmCraft"
  desc "Video editor"
  homepage "https://getartcraft.com/apps/filmcraft"
end
