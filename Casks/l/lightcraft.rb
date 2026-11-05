cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.1"
  sha256 arm:          "055348c8098e6244e43cbc2526e9158726746d467f919dae336848db7bb6dbf9",
         intel:        "055348c8098e6244e43cbc2526e9158726746d467f919dae336848db7bb6dbf9",
         arm64_linux:  "52a7c6e43abef434ecfd975a9a3b7f8182cc361d9b6ea182630e566dcbb4a8be",
         x86_64_linux: "346cf84c262322934b4a8bbee9fbd7db38f15917c93f2dd0409792d11bfa7db0"

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
