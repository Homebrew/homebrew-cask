cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.0"
  sha256 arm:          "c74e45230a54bce09bf86cecee7e22f3374ee46f8ba779ddda3f4ee7910d3f5c",
         intel:        "c74e45230a54bce09bf86cecee7e22f3374ee46f8ba779ddda3f4ee7910d3f5c",
         arm64_linux:  "fd019cafb30064980658c9c4ede99fdf37e58e9d5ed451fa3e7f61c1825dc256",
         x86_64_linux: "045a983e6b75e0ced16f30ec84bd8063f0f24267ff10c9f5c465521e53080847"

  on_macos do
    app "LightCraft.app"

    zap trash: "~/Library/Application Support/LightCraft"
  end
  on_linux do
    app_image "lightcraft-#{version}-linux-#{arch}.AppImage", target: "LightCraft.AppImage"
  end

  url "https://github.com/storytold/lightcraft/releases/download/v#{version}/lightcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "LightCraft"
  desc "Photo library and raw developer"
  homepage "https://getartcraft.com/apps/lightcraft"
end
