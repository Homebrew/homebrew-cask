cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.7.0"
  sha256 arm:          "cd04389f15518c6208ef3a1e4b9b16f9edbbd1ece3fa63f7876b5d8d411c8a4a",
         intel:        "cd04389f15518c6208ef3a1e4b9b16f9edbbd1ece3fa63f7876b5d8d411c8a4a",
         arm64_linux:  "0aea5a09cf85d5eb49f58a45bed89da57962d8f3ec38e19b5fe48ffb445c335f",
         x86_64_linux: "87ebce36bcdf6b31d16a9ca22ce29f9ad8db68185e4d98118800d1c2de78ac42"

  on_macos do
    app "PhotoCraft.app"

    zap trash: [
      "~/Library/Application Support/Photocraft",
      "~/Library/Preferences/ai.storyteller.photocraft.plist",
    ]
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
