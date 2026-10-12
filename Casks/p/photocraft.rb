cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.8.2"
  sha256 arm:          "d31fe9f86b521319e412515c5313a56dfa7ca015203e2cbaf49a5b1ddb59a601",
         intel:        "d31fe9f86b521319e412515c5313a56dfa7ca015203e2cbaf49a5b1ddb59a601",
         arm64_linux:  "d387c94d03870f09fe2e35b9aefd88cb65408d2d0fd891e3a8c63e030cf21cd3",
         x86_64_linux: "5eb656de686af504d8160d5198c2c8d414cf8b7a8d3ecc636bc8ba8fb56448a7"

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
