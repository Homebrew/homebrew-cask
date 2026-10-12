cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.5.0"
  sha256 arm:          "e372170ad95a7625e37b315b168d8be2a5d2547de6de252f838e81bb7de98513",
         intel:        "e372170ad95a7625e37b315b168d8be2a5d2547de6de252f838e81bb7de98513",
         arm64_linux:  "0e1e6bfab6f50afb038259b0d22e1aedb38200991cac0911918da1937effc3f7",
         x86_64_linux: "f97a82d0f21d3381fbb19a0ae0928d65c5cdc402faa5e92008312ce498745ce2"

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
