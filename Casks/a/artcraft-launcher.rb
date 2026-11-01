cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.12.0"
  sha256 arm:          "d6b58d21a4b4e092ff734731e3d553fb2c9c1ca3132a3d94a12989f778ad29d8",
         intel:        "d6b58d21a4b4e092ff734731e3d553fb2c9c1ca3132a3d94a12989f778ad29d8",
         arm64_linux:  "257b5be8792311e559012dca524e2447c68aa3e753bd5a2df20f40fac610d3a4",
         x86_64_linux: "c70f0fb8bdc20602bc7907526bb8342ab8e48d6be1bd57c252f3e4dbca444f4a"

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
