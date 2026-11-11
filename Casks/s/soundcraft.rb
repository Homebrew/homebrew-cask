cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.0"
  sha256 arm:          "bb7150ba57e0f128cb0bd1bedcaecad9686eea7c5d20fd31c1ffc24d7d13cfe6",
         intel:        "bb7150ba57e0f128cb0bd1bedcaecad9686eea7c5d20fd31c1ffc24d7d13cfe6",
         arm64_linux:  "f46f007f3d12d1d76bba64b913a66e119c46534530dfad8f5520debfd87835a3",
         x86_64_linux: "ed3470dbe50d6e646ea08bb252e1206388ef223db00c10bea389c8d2f2c2c286"

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
