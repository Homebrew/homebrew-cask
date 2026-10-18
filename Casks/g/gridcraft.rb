cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.8.0"
  sha256 arm:          "260622fc0e0b18cc88162f0c2294759b58f8a32efa43ca6bf569e8b48aee2a23",
         intel:        "260622fc0e0b18cc88162f0c2294759b58f8a32efa43ca6bf569e8b48aee2a23",
         arm64_linux:  "fb45826f529a1607fb8404a5f7bd3022e48fc778d936bd284ff42a859f9b0795",
         x86_64_linux: "942096a29a534aa2503e9e7aa1816e952f7250e73d55f8f32afd077547617f77"

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
