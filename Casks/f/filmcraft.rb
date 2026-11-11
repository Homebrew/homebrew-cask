cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.20.0"
  sha256 arm:          "6cceaa0e6a5f7a6848c128b13be1b669bc0e5a69f4aeb362d97120c7cca2cc88",
         intel:        "6cceaa0e6a5f7a6848c128b13be1b669bc0e5a69f4aeb362d97120c7cca2cc88",
         arm64_linux:  "ffe145c391c92610df127673f1f68d94549eb32e29fbe5454fc8f5fe546e1287",
         x86_64_linux: "f5d996f673879147852a184f90039cc414a66fcd905a49f9c05b35266b9ea75b"

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
