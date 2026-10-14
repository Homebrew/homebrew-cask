cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.7.0"
  sha256 arm:          "96194d335e780808c6a1fae3a3ee72d977178eadcd719623645b88433ef19be8",
         intel:        "96194d335e780808c6a1fae3a3ee72d977178eadcd719623645b88433ef19be8",
         arm64_linux:  "97c6923e127c846c65fa08050e5840b2bd46f244dda3d2ec42ec198c14d94287",
         x86_64_linux: "2daace8be3719afee727d2e353aa4bd0ac22798c312c92c2c6d5e42f27f70812"

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
