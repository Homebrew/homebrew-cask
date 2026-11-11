cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.21.0"
  sha256 arm:          "dd3cd5b54df0d7d7a457e00f3fad7e550813d4df8a8cdaa1a6bdcf7021fb2b3d",
         intel:        "dd3cd5b54df0d7d7a457e00f3fad7e550813d4df8a8cdaa1a6bdcf7021fb2b3d",
         arm64_linux:  "026842f690848af3588d2879f4bc8e626bd965462f2fd924e64db9d179e57ab8",
         x86_64_linux: "c3dea6f5c75b55d8023937c0965b5b7612533131da7d56e550a4ef0688faf1d6"

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
