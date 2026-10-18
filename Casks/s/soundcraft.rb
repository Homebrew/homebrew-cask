cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.8.0"
  sha256 arm:          "4221c313d25abc1aaca51d1495a19735b5e3c240a6820c566779c6e0b4c35320",
         intel:        "4221c313d25abc1aaca51d1495a19735b5e3c240a6820c566779c6e0b4c35320",
         arm64_linux:  "473fa2fbd9ce2a47c1d1bdc42b208f4ced24e8db6a8cf534607dd7d8451b344f",
         x86_64_linux: "9c38f8d1a5c818f673a17f68a952ea8972cea4ab4720590bdb7e393504866768"

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
