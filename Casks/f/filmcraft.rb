cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.0"
  sha256 arm:          "2f39bbdc26d782969305b35090250150734a3e99a379b32b50c46373a64f4e52",
         intel:        "2f39bbdc26d782969305b35090250150734a3e99a379b32b50c46373a64f4e52",
         arm64_linux:  "7b3ce768f525654692b34433f13860051758062ce78f1c8881b57e73f249b171",
         x86_64_linux: "3f2d85e31414818f9ae569254bbdb2c24dc5f9bfb3f47a65870611eeff4be47d"

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
