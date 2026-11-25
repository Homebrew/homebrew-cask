cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.1"
  sha256 arm:          "eb1dd392d7c3867b569aa9e08c016427096800016ff33f8f4e0192e43d9e6c0b",
         intel:        "eb1dd392d7c3867b569aa9e08c016427096800016ff33f8f4e0192e43d9e6c0b",
         arm64_linux:  "7dad0ab5157b69e43c0c542665fd63c5570a6c28a135ec70f1a7f0efbcdbe503",
         x86_64_linux: "4dbb402a413ec2a53103b9fa77d6356e6feeb086d94975c95e635c74b434daf8"

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
