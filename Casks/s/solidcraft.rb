cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.26.1"
  sha256 arm:          "d816d6ce8acbf1ef7d47937c1a5ef02684b6a0b5d8265ffe185d442130423832",
         intel:        "d816d6ce8acbf1ef7d47937c1a5ef02684b6a0b5d8265ffe185d442130423832",
         arm64_linux:  "ff01afc14bda14c4fd031419346855b8b606dfc507ebe08745e79ecb79cddf89",
         x86_64_linux: "e3224fa840baa5ff981598d793159e21d9f1c5ff7ff6c13ce94fda352824174c"

  on_macos do
    app "SolidCraft.app"

    zap trash: [
      "~/Library/Application Support/SolidCraft",
      "~/Library/Preferences/ai.storyteller.solidcraft.plist",
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
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
