cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.6.1"
  sha256 arm:          "430caa2a05adbedc472229bb51d9b16ff9a0b14c0e4e740a7ab2ef5bbaf1dcd8",
         intel:        "430caa2a05adbedc472229bb51d9b16ff9a0b14c0e4e740a7ab2ef5bbaf1dcd8",
         arm64_linux:  "dbc6abefab139f821315a6486665e2f882b32f11e36b20870b2bee83e5779588",
         x86_64_linux: "4c8679a160e841b1789ce5c4737fdd0f9c589823aaf2e607777181991f82e1a2"

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
