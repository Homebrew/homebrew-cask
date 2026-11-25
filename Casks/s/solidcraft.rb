cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.49.0"
  sha256 arm:          "5130a59965c48486afffbefabcc5a5e8e4c0c268b95bdc5e6197c408ca6df5cb",
         intel:        "5130a59965c48486afffbefabcc5a5e8e4c0c268b95bdc5e6197c408ca6df5cb",
         arm64_linux:  "e36e6099cb826a420b2f00759e80681f23616662b2506ce48cbdfba40cf622ad",
         x86_64_linux: "df55a99917842dfcaa581b671a876fc2a90cf095e8ccf1a64c048d1897a4ff1f"

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
