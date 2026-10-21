cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "53b434d762b0a4d539e35428eb4838b03fd123e33bfb93dd6ddfdfb27489e4f8",
         intel:        "53b434d762b0a4d539e35428eb4838b03fd123e33bfb93dd6ddfdfb27489e4f8",
         arm64_linux:  "c3d5dd865636f09c7cd5663fe56e568ca2913bc079b34385215597c00d9ddd37",
         x86_64_linux: "27f78fb8a601635aa95c24e53c6db2f0320143e947d81a58f320b0d9c560abb9"

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
