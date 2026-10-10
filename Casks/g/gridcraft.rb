cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.3.0"
  sha256 arm:          "529ce13e8b56ca918f9ce87743f0d5e7565f292bb86fdbbf46261b685c6bf442",
         intel:        "529ce13e8b56ca918f9ce87743f0d5e7565f292bb86fdbbf46261b685c6bf442",
         arm64_linux:  "c3510f5b6c2569a01323eb65d45c069302f3d742c513e6e79d6fa0926f7f3be4",
         x86_64_linux: "ae1c38dd468d464f749e1514ee86afb087c9ff77bd50c47e647cdb18f1532db1"

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
