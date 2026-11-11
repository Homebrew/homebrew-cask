cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.0"
  sha256 arm:          "ae2660fbb228cb9a19a3fe5f710d36ba8216159177b0d259eeaa0859dabe1462",
         intel:        "ae2660fbb228cb9a19a3fe5f710d36ba8216159177b0d259eeaa0859dabe1462",
         arm64_linux:  "5bb4039b484abaaac8888737282203c3dcaafa914704378ff82422532aec8259",
         x86_64_linux: "ad2f7ec7df71eebbf5c6845d823891842586e60f2456e0f581433b1203c7d1e0"

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
