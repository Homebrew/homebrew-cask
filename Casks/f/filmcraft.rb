cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.15.0"
  sha256 arm:          "a38a40516eb60d6a24741b09f1ec2c763bb40e01eca1af11fd6de0bc53a38bf4",
         intel:        "a38a40516eb60d6a24741b09f1ec2c763bb40e01eca1af11fd6de0bc53a38bf4",
         arm64_linux:  "93beed6c51382180a0c4497be84a5249eb26efe9a3968df6919a0ebdd025d26c",
         x86_64_linux: "4bcb119c1aa60df54ce3338d7aa48e3f14d61569f7bc63851a00bdc89249647b"

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
