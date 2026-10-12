cask "soundcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.6.1"
  sha256 arm:          "94f014708e0173c13630bb8fa4163124d3bbb7af571e0f03d9f9b3027f90d0e7",
         intel:        "94f014708e0173c13630bb8fa4163124d3bbb7af571e0f03d9f9b3027f90d0e7",
         arm64_linux:  "ec80d1bbd66d4c0102272b1462368e92a0504e4d99466255e46477fb5f907852",
         x86_64_linux: "68c658f2e72d74a3277f48df3ce13e4db9c6eafd7f1425f63e2dc85d86791200"

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
