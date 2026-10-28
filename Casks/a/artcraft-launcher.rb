cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.9.0"
  sha256 arm:          "85e24769ab19d3a3475776654552013566165d68a5040ef85f65bddb9946b5f7",
         intel:        "85e24769ab19d3a3475776654552013566165d68a5040ef85f65bddb9946b5f7",
         arm64_linux:  "250786f9459c13e1d169812e388b536d940b39e78cdfcb87f27024f01b474767",
         x86_64_linux: "7936019f32df44995ff9c28127e255f0f55623cb9d8295de91dc3398bdf431ad"

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
