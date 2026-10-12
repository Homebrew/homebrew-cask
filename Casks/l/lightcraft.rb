cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.1"
  sha256 arm:          "9c7aaf1ab532ee81819fded3ec451af5a2bad3b7c1b5c9d48e36b82239331457",
         intel:        "9c7aaf1ab532ee81819fded3ec451af5a2bad3b7c1b5c9d48e36b82239331457",
         arm64_linux:  "789419fd038ae857a0b5caa1968cc7247ae479c3819deabedaa42c11ab91733e",
         x86_64_linux: "78078794a6bd8f1026036f2503a1cf716ad2c3b57e1ca8b2bdc46472099c1e48"

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
