cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.49.1"
  sha256 arm:          "3bc84b76422f564ae934cedce55ac498cfe8d251ea9677e59359cf3090db988e",
         intel:        "3bc84b76422f564ae934cedce55ac498cfe8d251ea9677e59359cf3090db988e",
         arm64_linux:  "814bba58a4b44c8ca460383b08646e273ac2a517df84ca08328c38731c607ef9",
         x86_64_linux: "90d865f949c8f89f53ac1b1d596c61af1da95e2ba7959bddc0f843ade4bad31f"

  on_macos do
    app "SolidCraft.app"

    zap trash: [
      "~/Library/Application Support/SolidCraft",
      "~/Library/Caches/SolidCraft",
      "~/Library/Preferences/ai.storyteller.solidcraft.plist",
      "~/Library/Preferences/io.tangencylabs.solidcraft.plist",
    ]
  end
  on_linux do
    app_image "solidcraft-#{version}-linux-#{arch}.AppImage", target: "SolidCraft.AppImage"

    zap trash: "~/.local/share/solidcraft"
  end

  url "https://github.com/tangency-labs/solidcraft/releases/download/v#{version}/solidcraft-#{version}-#{url_end}"
  name "SolidCraft"
  desc "Parametric 3D CAD modeller"
  homepage "https://solidcraft.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
