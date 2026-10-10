cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.0"
  sha256 arm:          "3397597d156c8504f104d904ee8236bc8a4926234800a034449b0826d17b8051",
         intel:        "3397597d156c8504f104d904ee8236bc8a4926234800a034449b0826d17b8051",
         arm64_linux:  "a06b2a36dc598f25bc55384e5b346ed76bb3aaa5f0d6e0517061a5c06f60097f",
         x86_64_linux: "d8b68ea781d8c92a1d8a8449ea9b6d0988a83f7a3afbed656e37ac529812bfa0"

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
