cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.2.1"
  sha256 arm:          "4deff5924e8e4040e60c73db2e668812a5967c973790be7565f8e8d9c69344fd",
         intel:        "4deff5924e8e4040e60c73db2e668812a5967c973790be7565f8e8d9c69344fd",
         arm64_linux:  "82a9319324c6e97efe00c130ba4e31d8c51704d3026309361f7a58f6314ddcc2",
         x86_64_linux: "7891c9b24c8e165a54906f8ee6a6973e051dd3c2cc1fa2729a78269fec481188"

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
