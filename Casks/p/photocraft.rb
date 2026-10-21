cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.12.0"
  sha256 arm:          "5b439694603f11ccf93946ef474091afadc9fb1890ad8022723d160d4fccc08d",
         intel:        "5b439694603f11ccf93946ef474091afadc9fb1890ad8022723d160d4fccc08d",
         arm64_linux:  "1552c5d4ed82d1a74d7669330ae4904925e2eee5c6546c05012ffe93259a8932",
         x86_64_linux: "da821339afce93b72991c7900a28f589eb06a885e0ab59ea702ddec9a280ac66"

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
