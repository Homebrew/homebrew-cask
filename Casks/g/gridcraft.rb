cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.9.0"
  sha256 arm:          "79026d66255cdb1d70884327595a73ca43e2f5f10d0ab4bf22407970dea8a74b",
         intel:        "79026d66255cdb1d70884327595a73ca43e2f5f10d0ab4bf22407970dea8a74b",
         arm64_linux:  "397db93aa9aa41ce6cbea7cff828f54b01113de0b532f72ade475e2d0bca3405",
         x86_64_linux: "33020eef8c42271dd141547aa672bdf73c3e07ce0eb7914c9456ef8487e8f5fd"

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
