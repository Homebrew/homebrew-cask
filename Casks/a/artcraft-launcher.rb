cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.7.0"
  sha256 arm:          "b7c092b275f549750e3ccb85715b73a26381a144fe0ed611c9cf1b18fc448331",
         intel:        "b7c092b275f549750e3ccb85715b73a26381a144fe0ed611c9cf1b18fc448331",
         arm64_linux:  "82fb86a4c078c8dee3e167de2eca704e178a8b8f0d8273aab57cf7ede0fa69b4",
         x86_64_linux: "f80b9bdcfeb92bc88a54d07e7f2e03f1880f3fcf25c1511864b3d4118ecee1d8"

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
