cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.10.0"
  sha256 arm:          "2f2e21a0119e8e63b2b2f93d238817b3727af88720ab9e2b6deb1458927a3b1f",
         intel:        "2f2e21a0119e8e63b2b2f93d238817b3727af88720ab9e2b6deb1458927a3b1f",
         arm64_linux:  "802de997beb3fa9bc387629b499e82704b48af839ac85f2553ea9c2b2022845f",
         x86_64_linux: "cd1a33c979e8a5da94ded81d7648e779cb8069b77e4aca743c8d177ca5270d77"

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
