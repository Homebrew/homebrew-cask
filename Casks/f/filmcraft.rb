cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.7.2"
  sha256 arm:          "df8f6ec7f7c7d227549c20579c65b9f6b2635ccd994410bb70c8d0369a6b9fb7",
         intel:        "df8f6ec7f7c7d227549c20579c65b9f6b2635ccd994410bb70c8d0369a6b9fb7",
         arm64_linux:  "d2767bb36ae350465ad07317f927029b5a89fbb140499da649363be0c66dc849",
         x86_64_linux: "abf920d98d015860e1f5badc6cf0507d8f8116f5c328f7f7f2425f068ab3aee8"

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
