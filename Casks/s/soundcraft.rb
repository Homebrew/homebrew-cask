cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "e78a6c3daf69ae83c4765ee4f175993af8147399f4629d9df9c25dafe96c3029",
         intel:        "e78a6c3daf69ae83c4765ee4f175993af8147399f4629d9df9c25dafe96c3029",
         arm64_linux:  "dae7f2ce634aa068e1f445ee16f0834e6221c427a8b3c3bd459483395193fd6c",
         x86_64_linux: "507988f768de8496764733e5e715e027986f950a845a3e8124af92a885f5b756"

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
