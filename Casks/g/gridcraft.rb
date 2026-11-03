cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.16.0"
  sha256 arm:          "1a40e3d76cfd4fa945d1e77f3eba49b1b7188133ea53ae08f49c293c3696581d",
         intel:        "1a40e3d76cfd4fa945d1e77f3eba49b1b7188133ea53ae08f49c293c3696581d",
         arm64_linux:  "8ce1ab5aa3391833cad6d19e14d482631f10561210754066498e5e9d80ce8d64",
         x86_64_linux: "1b4b7a05337e1deead52b3ee6027a3ef66959fc81d86244f6ab733abe318386a"

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
