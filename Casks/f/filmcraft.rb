cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.17.0"
  sha256 arm:          "59558fbe4eb4489591c0cb232c97b88b9120e624de01c26d82de10c1576f2ab3",
         intel:        "59558fbe4eb4489591c0cb232c97b88b9120e624de01c26d82de10c1576f2ab3",
         arm64_linux:  "5b5bd1de3e82401f5c51cf52402a0c8724c1ec4e9270c382c852dbc6764d8871",
         x86_64_linux: "766f9c564f7ce128e484fb2b838c625f7381469745cfd3c66912ddc80136bee3"

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
