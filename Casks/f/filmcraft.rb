cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.9.0"
  sha256 arm:          "d654a23bbd039561a69bc5530203769040ca4961e228245abb843752526d2124",
         intel:        "d654a23bbd039561a69bc5530203769040ca4961e228245abb843752526d2124",
         arm64_linux:  "0c12287556b4aec4c89ffc7e65816411b91606cc8a3e9642e6ad395051036ced",
         x86_64_linux: "784e4cdbd8982f17b4ec81caf5367fd308d70a123a7aa74bccd7420214c0c447"

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
