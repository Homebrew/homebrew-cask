cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.13.0"
  sha256 arm:          "bb5d1103364f0c9f6ba245c7528b6fe878bab49131f43b3b5fa2c0151c21adbf",
         intel:        "bb5d1103364f0c9f6ba245c7528b6fe878bab49131f43b3b5fa2c0151c21adbf",
         arm64_linux:  "d6f41b1a9ed9684cab4d93eff0123bce154f82e4140a3a686e5451aed73c713f",
         x86_64_linux: "7b69690076c6e5d128d987c5d5d605c23b6e9b983dab9d76d80f5bdc9496bdaf"

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
