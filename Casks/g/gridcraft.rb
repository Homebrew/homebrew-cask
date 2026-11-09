cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.0"
  sha256 arm:          "35d96ba6fa8bbf90962fbce976b9206887d67a93827e16bbf438f8a915140dd3",
         intel:        "35d96ba6fa8bbf90962fbce976b9206887d67a93827e16bbf438f8a915140dd3",
         arm64_linux:  "fe77dc9383b275a9b04be2e0a818099efecea0458f372cd571533d6ce88d7d55",
         x86_64_linux: "fde2f9982ac769026521cb6f710ec96b4d919b1634ad68b15b2b9bf62467020c"

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
