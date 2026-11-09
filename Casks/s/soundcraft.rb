cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.0"
  sha256 arm:          "94b649503b68c70b048f12e578e859bee51ca7d718db0b02f955a06b28a9696f",
         intel:        "94b649503b68c70b048f12e578e859bee51ca7d718db0b02f955a06b28a9696f",
         arm64_linux:  "c0b5d7cbd14e618e68983d5285e2d1f7ac0c4ac37c3c2bbc62930031e0db8320",
         x86_64_linux: "aaded74e4f132c033acc1223c776a74e59a751dc908841b4c31572e38939198f"

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
