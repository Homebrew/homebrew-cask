cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.50.0"
  sha256 arm:          "87d33a9448754bc70a1ddd5910dc22edab865e7417431363b1830f88b4aa15c2",
         intel:        "87d33a9448754bc70a1ddd5910dc22edab865e7417431363b1830f88b4aa15c2",
         arm64_linux:  "efdc810a389f9e3608bfc9df3b5c40fa5000f2cfd4a8c46f788c31daaefcc19d",
         x86_64_linux: "f3afd0df54df5cfba281fe0d2b0476f87f154606464bd21b0094226063505d88"

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
