cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.1"
  sha256 arm:          "5cd4c45862fdc9ddc8c2a64e565d0a17e70f2f4d23aee57467a4812268143f4b",
         intel:        "5cd4c45862fdc9ddc8c2a64e565d0a17e70f2f4d23aee57467a4812268143f4b",
         arm64_linux:  "e5b7eeaf1fb81b60b1c4650cc4de3e0dbabc464b0561ab28dc84d45d2ffc4c58",
         x86_64_linux: "607f4a13f929b5f237de61e9040be4bfc86a06644bf2a103c73f7b9c84d3bf19"

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
