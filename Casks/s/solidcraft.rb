cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.51.2"
  sha256 arm:          "f601c5c7354ec547addddd1e56c5b89e38f5d53e1fe10922c899d6d811a13080",
         intel:        "f601c5c7354ec547addddd1e56c5b89e38f5d53e1fe10922c899d6d811a13080",
         arm64_linux:  "2fbb4eb9f3d71b08729ded4371a34517964e6e4ec4b6ed0ef678e84bfd7ae4ab",
         x86_64_linux: "aa10bfa6b4f64e3ced99ebc4678e5f55f99bb03b042396ce90a59d3606f82e2e"

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
