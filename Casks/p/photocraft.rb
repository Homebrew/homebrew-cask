cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.11.1"
  sha256 arm:          "9114cbf5ada2f9fa91b4566d053257924cbd50e477b207ea3fdf7188a4ecfbd3",
         intel:        "9114cbf5ada2f9fa91b4566d053257924cbd50e477b207ea3fdf7188a4ecfbd3",
         arm64_linux:  "e84ae9a44c24bba10f6c8e3a74478ce84d4b5296d8f98ce0be1fdf11f5fbe792",
         x86_64_linux: "8a69f0578b155118f40048cd57da83bf967b2fcd18ecfa1c2f98d05fdb61a7ef"

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
