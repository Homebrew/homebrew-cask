cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.45.0"
  sha256 arm:          "59c2529d4d3af7e437e3682074d3b24d6c925d6d85b57b60d92d52c94d67c438",
         intel:        "59c2529d4d3af7e437e3682074d3b24d6c925d6d85b57b60d92d52c94d67c438",
         arm64_linux:  "f86321f08aedb72f7a3d825715165483d60095ffbd7a710cd623b57b11fc609b",
         x86_64_linux: "ac453385ffd45ed59c6104bcc30aa01cb853bcfe338bdeaa7e42c24cc6cd1c2f"

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
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
