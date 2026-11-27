cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.51.1"
  sha256 arm:          "653835d65375ba3195e1459889baf25d76d3fbee3d59aa95c683c96f2de4faf5",
         intel:        "653835d65375ba3195e1459889baf25d76d3fbee3d59aa95c683c96f2de4faf5",
         arm64_linux:  "603c8c15716686cd4801636a9d46b41deaf20d320b47ac96bc49e0874172b905",
         x86_64_linux: "0e9ae100e3b7a06409a0a6ca2599475e4642e1fe88e644eb5bf4d7571d9c79c3"

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
