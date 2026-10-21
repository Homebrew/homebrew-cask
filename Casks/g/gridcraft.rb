cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.10.0"
  sha256 arm:          "4ff99125557848e3997689122e7a82f8c110d09fd6615072c3a26341b70588cf",
         intel:        "4ff99125557848e3997689122e7a82f8c110d09fd6615072c3a26341b70588cf",
         arm64_linux:  "5a1584561ce3f0fe53f73cdff0b5c62f96caef644f96e646219c746eb5e51dfc",
         x86_64_linux: "489f00d329361d21b4ec5f77fb042782edb72c33144f83ede43aa3db8e52139b"

  on_macos do
    app "GridCraft.app"

    zap trash: [
      "~/Library/Application Support/GridCraft",
      "~/Library/Preferences/ai.storyteller.gridcraft.plist",
    ]
  end
  on_linux do
    app_image "gridcraft-#{version}-linux-#{arch}.AppImage", target: "GridCraft.AppImage"

    zap trash: "~/.config/gridcraft"
  end

  url "https://github.com/storytold/gridcraft/releases/download/v#{version}/gridcraft-#{version}-#{url_end}"
  name "GridCraft"
  desc "Spreadsheet editor"
  homepage "https://github.com/storytold/gridcraft"
end
