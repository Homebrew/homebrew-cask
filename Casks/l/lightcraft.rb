cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.6.0"
  sha256 arm:          "73021243e351d7a5ea78f0c8aad7a7e9abba471b7be32e8fcd4d03e98078b50a",
         intel:        "73021243e351d7a5ea78f0c8aad7a7e9abba471b7be32e8fcd4d03e98078b50a",
         arm64_linux:  "ccefe78ec7f61f7804ac72ba0fad5d95f37b0b059d9e4d165e9fb22d31c2eb3d",
         x86_64_linux: "577ef018dceec8d4980d2f9b20782ec37848158b8e6419cc90d31c2b580c1919"

  on_macos do
    app "LightCraft.app"

    zap trash: "~/Library/Application Support/LightCraft"
  end
  on_linux do
    app_image "lightcraft-#{version}-linux-#{arch}.AppImage", target: "LightCraft.AppImage"

    zap trash: "~/.config/lightcraft"
  end

  url "https://github.com/storytold/lightcraft/releases/download/v#{version}/lightcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "LightCraft"
  desc "Photo library manager and raw image developer"
  homepage "https://getartcraft.com/apps/lightcraft"
end
