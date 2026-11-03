cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.20.1"
  sha256 arm:          "5486555dc749df1650f321e363534e603a7c4f80ea31c54d9e88489ff742db03",
         intel:        "5486555dc749df1650f321e363534e603a7c4f80ea31c54d9e88489ff742db03",
         arm64_linux:  "02f65fad7ff7585191751df73a0d0a1364e0c3f1fbcf5e5458993792cdf410d5",
         x86_64_linux: "d7c605fd05ea2334e2771e1358fe4d900dbbff14f02d766070c141e2e3ad4bbf"

  on_macos do
    app "PhotoCraft.app"

    zap trash: [
      "~/Library/Application Support/Photocraft",
      "~/Library/Preferences/ai.storyteller.photocraft.plist",
    ]
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"

    zap trash: [
      "~/.config/photocraft",
      "~/.local/share/icons/hicolor/*/apps/ai.storyteller.photocraft.*",
    ]
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
