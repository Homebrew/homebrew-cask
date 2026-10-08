cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.5.0"
  sha256 arm:          "dff8c8105d5938d46fa4ba29559d3efc0f1ea195a5392d36cf62bc14ea2de5e7",
         intel:        "dff8c8105d5938d46fa4ba29559d3efc0f1ea195a5392d36cf62bc14ea2de5e7",
         arm64_linux:  "f87fa09cb5a0f51e57aaa0383800446d469bbb0ade79c69c6bc4f38899b9b309",
         x86_64_linux: "f54d863807053bbdfcffa0d624ef7e49d3fd41310c7bb1ede48536f69929d22f"

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
