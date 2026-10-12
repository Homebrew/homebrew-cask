cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.6.1"
  sha256 arm:          "65b374d3098e7c6a76de93babccfe561201a02629433a392463c9eb298a3ba4f",
         intel:        "65b374d3098e7c6a76de93babccfe561201a02629433a392463c9eb298a3ba4f",
         arm64_linux:  "9669cf7e0dd66b0aa4ef3569f1f37a2f683f8889df3af79adc4f697c5a5a3f77",
         x86_64_linux: "9db72f49a856f439a5c89b3eb4fd3ed51c4a7a996ebe6692e58d1e8f5da3c954"

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
