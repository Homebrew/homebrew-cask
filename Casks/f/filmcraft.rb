cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.4.0"
  sha256 arm:          "81feeedd6294579fe51f07acff2f8bac57c2ca72a0b49977ef76be67c7c45237",
         intel:        "81feeedd6294579fe51f07acff2f8bac57c2ca72a0b49977ef76be67c7c45237",
         arm64_linux:  "c4ca4251b509dc3a8dccc5c41b7122be82c6072518ae501f7766c3312e72c530",
         x86_64_linux: "d8410dea7b2b064ede1ead87dd894bca3537a4dfda1a44297158849f56ba2d4c"

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
