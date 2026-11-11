cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.23.0"
  sha256 arm:          "8ca761f3e9af4d932cc6efdd6ecbfa22128153ba30cce955547ca6256e61516d",
         intel:        "8ca761f3e9af4d932cc6efdd6ecbfa22128153ba30cce955547ca6256e61516d",
         arm64_linux:  "b76cdd4bcf0b27e7128d9035c5e2aaff5128198e0606870d0dd948be99c43664",
         x86_64_linux: "2419663622c98f16c461dafabeb4df7923d2ec4e4a6c7e001a1df8a2804d93c3"

  on_macos do
    app "PhotoCraft.app"

    zap trash: [
      "~/Library/Application Support/Photocraft",
      "~/Library/Preferences/ai.storyteller.photocraft.plist",
    ]
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"

    zap trash: [
      "~/.config/photocraft",
      "~/.local/share/icons/hicolor/*/apps/ai.storyteller.photocraft.*",
    ]
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
