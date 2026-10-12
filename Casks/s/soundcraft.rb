cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.0"
  sha256 arm:          "2d1ceb00a6a0d5533defa08ff95d49432f7e7455d831613d9d1767c30bf499a2",
         intel:        "2d1ceb00a6a0d5533defa08ff95d49432f7e7455d831613d9d1767c30bf499a2",
         arm64_linux:  "b74c4d8b3078a9b97415ac90c0c8bd1d74002c7cf3fa5db853d60ebd2f133c5c",
         x86_64_linux: "ca008be461b57ca16975f94f9fc758f39d727d4477c3211e3f5b1ea46bead272"

  on_macos do
    app "SoundCraft.app"

    zap trash: [
      "~/Library/Application Support/SoundCraft",
      "~/Library/Preferences/ai.storyteller.soundcraft.plist",
    ]
  end
  on_linux do
    app_image "soundcraft-#{version}-linux-#{arch}.AppImage", target: "SoundCraft.AppImage"

    zap trash: "~/.config/soundcraft"
  end

  url "https://github.com/storytold/soundcraft/releases/download/v#{version}/soundcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "SoundCraft"
  desc "Digital audio workstation"
  homepage "https://github.com/storytold/soundcraft"
end
