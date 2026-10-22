cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.1"
  sha256 arm:          "96f2bcf47ab291fdbb963344dbf2b75e74f39cbda297a0a6658dbb14757b72d9",
         intel:        "96f2bcf47ab291fdbb963344dbf2b75e74f39cbda297a0a6658dbb14757b72d9",
         arm64_linux:  "1f8dd70890da8e1ea730e81724105c1b37cf6cec21a31d5cbb5ee23dd764a090",
         x86_64_linux: "a61a56691fad5c22944b44322a5b7db6d717e5bf47adf8dcbbc883f5498593eb"

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
