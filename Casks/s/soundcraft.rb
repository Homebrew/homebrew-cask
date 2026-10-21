cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.0"
  sha256 arm:          "36fc51acefb291f58e928e05077e33c7b4d01a8614278b2af8f377aebd7e61d1",
         intel:        "36fc51acefb291f58e928e05077e33c7b4d01a8614278b2af8f377aebd7e61d1",
         arm64_linux:  "0fa156a6c0af84d9b320cc586857a372a3f9febb23d4b183d6265d5655a0dadb",
         x86_64_linux: "b68f8d17904a60841f7fe6dd164376970b41cc388d6b8041ad18226251f5bfbb"

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
