cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.0"
  sha256 arm:          "a362eb5a4284262010f76a8ea7c838e88c3da71a796ac2600604db0d7660a464",
         intel:        "a362eb5a4284262010f76a8ea7c838e88c3da71a796ac2600604db0d7660a464",
         arm64_linux:  "49ea38572f8269cf5527d8fa7bc03cb8ba1e3d36c7a282bd626fc48f371b3646",
         x86_64_linux: "80f2fecd132b9a9c3ac2391664b0a0214169c8cc0e27be917a3704553a914d81"

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
