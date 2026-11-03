cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.14.0"
  sha256 arm:          "4beb204ec62c3e33b68adfe65cc00eac055b195e34eaf706fb5dff6799fb7e27",
         intel:        "4beb204ec62c3e33b68adfe65cc00eac055b195e34eaf706fb5dff6799fb7e27",
         arm64_linux:  "4ef9bc8c29b71a313caeb99348daec254c5e7e511592217d22fcbaae4f755cce",
         x86_64_linux: "6e90cc5cbf9663d55605a52dad2ec73b2711423257e68c46d9b908d9d4cb3127"

  on_macos do
    app "ArtCraft Launcher.app"

    uninstall quit: "ai.storyteller.artcraft-launcher"

    zap trash: [
      "~/Library/Application Support/ai.storyteller.artcraft-launcher",
      "~/Library/Application Support/ArtCraft Launcher",
      "~/Library/Caches/ArtCraft Launcher",
    ]
  end
  on_linux do
    app_image "artcraft-launcher-#{version}-linux-#{arch}.AppImage", target: "artcraft-launcher.AppImage"

    zap trash: [
          "~/.cache/artcraft-launcher",
          "~/.local/share/artcraft-launcher",
          "~/.local/share/ArtCraft/versions",
        ],
        rmdir: "~/.local/share/ArtCraft"
  end

  url "https://github.com/storytold/craft-launcher/releases/download/v#{version}/artcraft-launcher-#{version}-#{platform_suffix}"
  name "ArtCraft Launcher"
  desc "Installer and updater for the Craft App Suite"
  homepage "https://github.com/storytold/craft-launcher"

  auto_updates true
end
