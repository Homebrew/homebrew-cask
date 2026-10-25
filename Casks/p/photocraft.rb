cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.16.0"
  sha256 arm:          "489e00a7fd19f7e924a3a05ec33c7b057ea4766129b4eef132ce82ff42c10619",
         intel:        "489e00a7fd19f7e924a3a05ec33c7b057ea4766129b4eef132ce82ff42c10619",
         arm64_linux:  "dde10fe1311e66bb0f82ae8ad237e112716ebd0daed483243a1e12f2bc33f853",
         x86_64_linux: "fc670139091e661e948a6de1ff2219a6dd04232e6ac8616349ee238a7a49d54e"

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
