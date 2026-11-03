cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"
  sha256 arm:          "24744b39f7149d570c7ab10a778d6ea178ae6065192eabe782bf29d9d6a2b8bc",
         intel:        "24744b39f7149d570c7ab10a778d6ea178ae6065192eabe782bf29d9d6a2b8bc",
         arm64_linux:  "66bf47d3e4a255e9776646f28c94fde27c6626fc597cd22be62b232794d2cfc3",
         x86_64_linux: "033d7f600fa590fcb7f57ba079010fa6ab3baf67307fd75eff3d1fac519a3bad"

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
