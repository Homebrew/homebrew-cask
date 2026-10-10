cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.6.0"
  sha256 arm:          "aedac311c7a76db3285451e0360ab0da6e7be23e5ded38c8ac5840d68cad74db",
         intel:        "aedac311c7a76db3285451e0360ab0da6e7be23e5ded38c8ac5840d68cad74db",
         arm64_linux:  "d58801e756fe8e3b16596800d6de49e876f7e653f8e686c4c94883e260830154",
         x86_64_linux: "635f93893f949dbf17a2bc20e1c285a8efdbc8859c844ad2fbaae8e7009f67d6"

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
