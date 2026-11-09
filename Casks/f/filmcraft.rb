cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.0"
  sha256 arm:          "31a33ee46b39ad9af8c10674c756514c71d313bb1e68b5435c9ecd71b46bec54",
         intel:        "31a33ee46b39ad9af8c10674c756514c71d313bb1e68b5435c9ecd71b46bec54",
         arm64_linux:  "87d01bc9216693e5ce4143a92f768f74b5e15dba81a8637b4c90cfa463edf1c7",
         x86_64_linux: "2f09cff6963b55bc2160158060af8de226b0ec8fc223a198b10145a58e238fe8"

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
