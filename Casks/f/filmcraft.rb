cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.20.1"
  sha256 arm:          "5722f0f21ca96583ee27dfd88bae23e0a4a6ab87862a6c00082c88c5c759e75e",
         intel:        "5722f0f21ca96583ee27dfd88bae23e0a4a6ab87862a6c00082c88c5c759e75e",
         arm64_linux:  "487c1750281285de67f68752e1154332b08993c95aee2b4271e4164ec3c33365",
         x86_64_linux: "4a25aecb2e9481b65e7353528bca9e4a8c5388dd55f1486ffe64502e08bdfa02"

  on_macos do
    app "FilmCraft.app"

    zap trash: "~/Library/Application Support/FilmCraft"
  end
  on_linux do
    app_image "filmcraft-#{version}-linux-#{arch}.AppImage", target: "FilmCraft.AppImage"

    zap trash: "~/.local/share/filmcraft"
  end

  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-#{version}-#{url_end}"
  name "FilmCraft"
  desc "Video editor"
  homepage "https://getartcraft.com/apps/filmcraft"
end
