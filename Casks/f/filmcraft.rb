cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.11.0"
  sha256 arm:          "8f7abc14eaade042e7fe13208ad21e903add780bb8cea7aee73b192bfcd9cead",
         intel:        "8f7abc14eaade042e7fe13208ad21e903add780bb8cea7aee73b192bfcd9cead",
         arm64_linux:  "edb0ee3ed168d3bedb9896e3535378385bc1ea130aaf1cb8a604db50235f04f4",
         x86_64_linux: "54421b9f1fcd8c08f242a87093d6761fea5fdef1ac581c6b6687a49484e7d893"

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
