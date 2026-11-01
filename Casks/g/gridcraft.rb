cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.15.0"
  sha256 arm:          "32fc48bd17de7f8aba9584f5cbfd49059815645318b169d5a7f55f51a543fe25",
         intel:        "32fc48bd17de7f8aba9584f5cbfd49059815645318b169d5a7f55f51a543fe25",
         arm64_linux:  "99fbee299f27147af0dbefebc21d6db23a6166d3ec94635c4d03d55e2c6aee53",
         x86_64_linux: "dc789babeff5d57c8044d4a77a7502e8f82e293c4099f6e51939c7d50b24bfdc"

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
