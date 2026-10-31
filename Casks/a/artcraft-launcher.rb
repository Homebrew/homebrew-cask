cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.11.1"
  sha256 arm:          "f8e658b8246ad9377c265e802b0d4af016a46012f238d37e2859d97c8972aa97",
         intel:        "f8e658b8246ad9377c265e802b0d4af016a46012f238d37e2859d97c8972aa97",
         arm64_linux:  "3162cc003f731b2c24125c51abc760f0dda476c1d04bc475f2a08a164ab7ab52",
         x86_64_linux: "7241e6be01fc229e9793ca69bcd8a6be535ff11cb0a877058c34db8a386eb62f"

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
  end

  url "https://github.com/storytold/craft-launcher/releases/download/v#{version}/artcraft-launcher-#{version}-#{platform_suffix}"
  name "ArtCraft Launcher"
  desc "Installer and updater for the Craft App Suite"
  homepage "https://github.com/storytold/craft-launcher"

  auto_updates true
end
