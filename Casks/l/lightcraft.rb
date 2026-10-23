cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.0"
  sha256 arm:          "9a1a9b5d8e9af96101d3299650d014d094c51d8ea8fe5e39bae83fa5a9189de0",
         intel:        "9a1a9b5d8e9af96101d3299650d014d094c51d8ea8fe5e39bae83fa5a9189de0",
         arm64_linux:  "46f12993371118f4158c4b19ff6f01e1ffdc2cf8049bea2dd9e36f8185333382",
         x86_64_linux: "07ef0c639bd211c1cba252e6803953c1d99462f55b561d30bf9bd7ac4a4e7d7b"

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
