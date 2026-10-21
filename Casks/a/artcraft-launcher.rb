cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.6.0"
  sha256 arm:          "f20dbd6c9ecbcf9998ab7c9cbc144dd8d4701e9a1d4ce33aeb4ad272631cb38e",
         intel:        "f20dbd6c9ecbcf9998ab7c9cbc144dd8d4701e9a1d4ce33aeb4ad272631cb38e",
         arm64_linux:  "6386d004e0366fac188eb92bed57de33e462029992013845b2df59f56e24d4e2",
         x86_64_linux: "4d543eaa20e5c6a838f643707699abb99737ad4f6b0384ed22c731dd2df5c155"

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
