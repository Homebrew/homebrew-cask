cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.17.0"
  sha256 arm:          "35ba606e448dbf5e10db9508354593468a4ef39d297644e12c179e55b72ff0a7",
         intel:        "35ba606e448dbf5e10db9508354593468a4ef39d297644e12c179e55b72ff0a7",
         arm64_linux:  "e87751d06768702528acc4e8efdb9fca747362a6ac1728b91735c8b6aef5d54c",
         x86_64_linux: "0455c863535822d951a1a91fdee8dd029369e0f2f93f7ac99c4916ef70a87761"

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
