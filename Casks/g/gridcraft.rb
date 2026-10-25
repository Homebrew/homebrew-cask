cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.12.1"
  sha256 arm:          "ee234f51e2e747dcf278fde984c86218fdfe2ff7188c01b699394fcaef4033be",
         intel:        "ee234f51e2e747dcf278fde984c86218fdfe2ff7188c01b699394fcaef4033be",
         arm64_linux:  "6f89438cc1b340197cf9dcc3506961c2dabc1e0a797213c997fa51b0156f4b46",
         x86_64_linux: "eb2de0401e1089d6f76c07b884b82d71c44e7455efae2014cc347a8a0c9f1277"

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
