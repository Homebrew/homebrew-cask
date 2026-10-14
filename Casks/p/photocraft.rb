cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.9.0"
  sha256 arm:          "06503eb1c845990e99f8824831cc73b274e2b1dbe4461eb6460dfc9a6008239d",
         intel:        "06503eb1c845990e99f8824831cc73b274e2b1dbe4461eb6460dfc9a6008239d",
         arm64_linux:  "2752b5097e2788cc1ab0c7b410657b1eab790bcc3b576f8749de707282dba9e3",
         x86_64_linux: "483a9a79200e0c0864bb54cf3faa6a55e2b79c1433dacfcb153d3862e78f32bc"

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
