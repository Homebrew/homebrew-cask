cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.14.2"
  sha256 arm:          "7802f2abf2c48e00fda4475a48f7cf19c099d0004ae9b11b11e285ddcf01c4b4",
         intel:        "7802f2abf2c48e00fda4475a48f7cf19c099d0004ae9b11b11e285ddcf01c4b4",
         arm64_linux:  "529e89a8f4fa26d6a4e1b82f016480f333e5924ef1ab62f734ad1dacbfa29c44",
         x86_64_linux: "0740f214339b386ab45c076fe9f6f64e4986c56c21d8fbd6bbe5d0be03ee7f2b"

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
