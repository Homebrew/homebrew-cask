cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.8.0"
  sha256 arm:          "7587a8fe3d398da58027c6dbe5566d08568668c8e041de7bbb512a4672229a9a",
         intel:        "7587a8fe3d398da58027c6dbe5566d08568668c8e041de7bbb512a4672229a9a",
         arm64_linux:  "ded956efbb5c0cb22d7492ff83238c1cff42a88adc4c8d8bfdfa384dc02f179a",
         x86_64_linux: "41955e97c8932435f2b6bb8245783c668786b33d2b7df962bd097641da68211e"

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
