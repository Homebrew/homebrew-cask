cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.3.0"
  sha256 arm:          "c0b0223cddb18dd7f5607fb4d6cc6a925a62f5b5b47457997d61ad0f72aa5911",
         intel:        "c0b0223cddb18dd7f5607fb4d6cc6a925a62f5b5b47457997d61ad0f72aa5911",
         arm64_linux:  "8d7b450a445e6795ffddd3996bfa5d44bcf37c6c9e6268daf3bb93d216063fb9",
         x86_64_linux: "29e3011f49a52ea25c8fe404258a6c5fadb02094dbb40a884d69e6ba808e6136"

  on_macos do
    app "PhotoCraft.app"

    zap trash: "~/Library/Preferences/ai.storyteller.photocraft.plist"
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
