cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.16.1"
  sha256 arm:          "f735ea01a89feceef94eebc253457afb2c1463edf7e0a7351651c075a0fecb81",
         intel:        "f735ea01a89feceef94eebc253457afb2c1463edf7e0a7351651c075a0fecb81",
         arm64_linux:  "3b241c8ba608c035527805802052ed003503ad11501668cb7c2824ad619d37a2",
         x86_64_linux: "97b6ad3fbe471d2de94deaaa7db312624a39dd63e5ee1ebbf6b38563d62aae57"

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
