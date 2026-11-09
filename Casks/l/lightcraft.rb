cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.0"
  sha256 arm:          "ddb34c8c87bb05ad2c295052e3026363686d7995b08bcfe50e6cd98a6b67a697",
         intel:        "ddb34c8c87bb05ad2c295052e3026363686d7995b08bcfe50e6cd98a6b67a697",
         arm64_linux:  "810e99565a6fd0bd4414cd478fee4b69da5de2f764bc4fac90f4daeeff081f9b",
         x86_64_linux: "66be1e9185d56f60086e9a7c019064dd238d95531c13c0e1c83a527fceb73e10"

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
