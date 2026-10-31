cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.0"
  sha256 arm:          "f6a64e077ddeaf393de92e4e71093a91f98cd8a02f2f4c20cb318c36c8176185",
         intel:        "f6a64e077ddeaf393de92e4e71093a91f98cd8a02f2f4c20cb318c36c8176185",
         arm64_linux:  "550582a292466534189f4e96f14babc2e92f3a01ef9aff63da16f16d3bf35f3b",
         x86_64_linux: "107a597fd3f6d45d921047af274e550dedeefb4d7bc8c13ec3688091309f8126"

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
