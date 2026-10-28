cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.13.0"
  sha256 arm:          "67b6a023b465edf85ef5a309d49a6b00a085e3ea3dc9dddc0060996b38515168",
         intel:        "67b6a023b465edf85ef5a309d49a6b00a085e3ea3dc9dddc0060996b38515168",
         arm64_linux:  "33f3d28a237bea204203ef0576f835facfa7e10910ce502886bf8f5b434cbb7b",
         x86_64_linux: "2a87c3794cb2a7d0242a51c7695883b8beae51a7c5fac589a7d58dde1958b385"

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
