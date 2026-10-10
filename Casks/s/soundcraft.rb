cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.3.0"
  sha256 arm:          "7c54bff61592068e86b8c323be18ff1e36c425b3186d0278287b0d428f3180ff",
         intel:        "7c54bff61592068e86b8c323be18ff1e36c425b3186d0278287b0d428f3180ff",
         arm64_linux:  "70ac339d334f6caef4b00e0d372ff6e3b1f39071db4a61fd21bbce8325105839",
         x86_64_linux: "58f6a75103bb196ddb763d9b87af26a235545d7d3746c5cb6f3ad7ad49a3e261"

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
