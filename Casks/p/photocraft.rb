cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.23.1"
  sha256 arm:          "606a52917188c65dc71709781180a0e3244e0f3b7f40b2f5b80170e87364420d",
         intel:        "606a52917188c65dc71709781180a0e3244e0f3b7f40b2f5b80170e87364420d",
         arm64_linux:  "e43d4debbe66cf0ea27626097f2756848176a5540a3de59252c85dd3c7698246",
         x86_64_linux: "05747b3e527e1e0a0c1de39970361cf38c8fca7e8d3e3601ef2082fb0e6dd17f"

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
