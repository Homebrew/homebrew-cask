cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.10.0"
  sha256 arm:          "f05856049eb098140dfa303587e65b9c6db2e44f096adcfe44d870d780961aae",
         intel:        "f05856049eb098140dfa303587e65b9c6db2e44f096adcfe44d870d780961aae",
         arm64_linux:  "03f41265b68f22cefa7fbb7de2e3c635fd2a15592c846c466af99acce3666cb1",
         x86_64_linux: "2c7f3f9c73dd944531df073ea6e800cff5ba9d533d00ff1f0015470ef17412ad"

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
