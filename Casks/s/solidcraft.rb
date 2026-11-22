cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.46.2"
  sha256 arm:          "9aab351c06f9b7e7002c0a319117da8d3cdafa1587ebbc3a167a572f67dbf5e5",
         intel:        "9aab351c06f9b7e7002c0a319117da8d3cdafa1587ebbc3a167a572f67dbf5e5",
         arm64_linux:  "2d91c62ae5871441911899ab7552d8ae90c6540bbebc7f0eb06e3078b5e5ec53",
         x86_64_linux: "c38860546295693a02954533c060d2cd685b7e29059a3ec9cc807bec95422e73"

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
