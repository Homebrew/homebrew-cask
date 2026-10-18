cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.1"
  sha256 arm:          "5e3fde7755d0fd0fa91114fc58ef51093a81b6177dcd9aece0142b4ec10e1c5a",
         intel:        "5e3fde7755d0fd0fa91114fc58ef51093a81b6177dcd9aece0142b4ec10e1c5a",
         arm64_linux:  "f236c2b9f703bcb0f1c7eef198d36c8970886659ee2d622958b76bc3d409151f",
         x86_64_linux: "bd002851a9524349c9d8922ae2b85c98c257de16480d3b7f885801a3b64b6d18"

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
