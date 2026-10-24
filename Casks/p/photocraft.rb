cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.15.1"
  sha256 arm:          "a1c07b7c52d8f60e772e3fb2017fff7fbafccf81fa30f51d8e2c36bfad361461",
         intel:        "a1c07b7c52d8f60e772e3fb2017fff7fbafccf81fa30f51d8e2c36bfad361461",
         arm64_linux:  "1a56a7c8afe789fde7e062a81eac6ad8d391acb297d744d35401b79a26d6b931",
         x86_64_linux: "7d96f3d0da1921d634620b0d4cda37cbf3353a767f920b906ce1c6667380ffed"

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
