cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "9377e164670ecb76a4610868ac24f7804415d82cf0016c27f24cc3cc5baa41df",
         intel:        "9377e164670ecb76a4610868ac24f7804415d82cf0016c27f24cc3cc5baa41df",
         arm64_linux:  "498826a8315e46c4862f049d705ecc7c849fcb155db5cd0d5048cb2bbdc58049",
         x86_64_linux: "e1f2eee16c6da59db23c0724e97992029bdc3a19a8e64704753d398db7832387"

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
