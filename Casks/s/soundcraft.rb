cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.0"
  sha256 arm:          "c93ce20730c2e35bd2b1c3dce8d288eb502cf4640feb025734bd7cbe61915487",
         intel:        "c93ce20730c2e35bd2b1c3dce8d288eb502cf4640feb025734bd7cbe61915487",
         arm64_linux:  "49a79246e9257cdeee4ec5473b8d57e6bb359c3076016d2541271057a1599e1e",
         x86_64_linux: "c83de262c53d78adb36f439e06619e0dcac0ebdeb0ed168843fcb141e93b01ba"

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
