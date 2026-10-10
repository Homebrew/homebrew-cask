cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.4.0"
  sha256 arm:          "4cb75d8a8e9ad87d75768151d89eb3a252e3527db0853e9470495cb424019a7b",
         intel:        "4cb75d8a8e9ad87d75768151d89eb3a252e3527db0853e9470495cb424019a7b",
         arm64_linux:  "d7b9c64260ade372ce33c913903b76975c3c8867650153977f99cc31e8a7eb55",
         x86_64_linux: "38f3e9dfd80c034f85f5b399325224ba27d89d62f40459da548560b5002854df"

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
