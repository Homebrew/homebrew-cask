cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.13.0"
  sha256 arm:          "d26aa7bf7b148666b525a22b2ca3cb1c9947142dbdd788ad50230e00996812a7",
         intel:        "d26aa7bf7b148666b525a22b2ca3cb1c9947142dbdd788ad50230e00996812a7",
         arm64_linux:  "0606cf9867380f46b1c9fff053972bfdf901093b94c2fe552e9927e83c711be7",
         x86_64_linux: "0ddfcc6c703b9a5cf78295750e103b2076d544bb2633c72ce4cab5212326d8de"

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
