cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.1"
  sha256 arm:          "f17afe3725b40b353582077b9a5de6d140452ff1dd5c315c9333d49f89bce287",
         intel:        "f17afe3725b40b353582077b9a5de6d140452ff1dd5c315c9333d49f89bce287",
         arm64_linux:  "d163b06cf869fb839471d861b967c46486a5f0cc588e12bfd565881f68802003",
         x86_64_linux: "851838a2edb3bf7b2ca12e1c5460d1e6b4c36bbef2050af0377d96e4c271889c"

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
