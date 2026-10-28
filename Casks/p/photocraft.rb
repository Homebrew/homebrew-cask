cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.17.0"
  sha256 arm:          "6e0903172a7440ce4e71002f5585ba4eff588fa3fc99b78cd9811180cabd5b80",
         intel:        "6e0903172a7440ce4e71002f5585ba4eff588fa3fc99b78cd9811180cabd5b80",
         arm64_linux:  "8f6f34dba1a68802a154139172d80e6a310759a78a75f02d39d5b26ccf3384eb",
         x86_64_linux: "ce77299f243534ac1d248aa81c9a9fd278ae407c024cb931e03931eb70be54af"

  on_macos do
    app "PhotoCraft.app"

    zap trash: [
      "~/Library/Application Support/Photocraft",
      "~/Library/Preferences/ai.storyteller.photocraft.plist",
    ]
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
