cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.16.0"
  sha256 arm:          "e4ec3f4223f5752fa088c1c4fefc8f522c4422150d9cefca67440db511eba4b0",
         intel:        "e4ec3f4223f5752fa088c1c4fefc8f522c4422150d9cefca67440db511eba4b0",
         arm64_linux:  "3028fd37d6d394b357bf7dcf594437a99007ee7fb28c1d7813b6641cb6137386",
         x86_64_linux: "ad15ef2c43afa62365118c3d83c03efb05b78dce4b0a64f0541f420f670a80a4"

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
