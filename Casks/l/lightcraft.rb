cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "8ff1a1c3d1a985955cbc6571d1fba88e3754bb0ccce883e832dc2cd3e73a5175",
         intel:        "8ff1a1c3d1a985955cbc6571d1fba88e3754bb0ccce883e832dc2cd3e73a5175",
         arm64_linux:  "ae20d99b432a2623b5dcac0f17287fa230708f52ba78d51551d44a20e9ba1774",
         x86_64_linux: "0ca1e9e585008ca6c0027168abc6df26a1a0cae8b26d73181bb53e2ce32e5d77"

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
