cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.0"
  sha256 arm:          "09a0dd5a9d42e6b607ac57789d6a1b9cf8f58d9a670bb671df9ba7809f64e708",
         intel:        "09a0dd5a9d42e6b607ac57789d6a1b9cf8f58d9a670bb671df9ba7809f64e708",
         arm64_linux:  "26f776a50c6928429af74db2cf751d36673a19b7fad8baed324e1cb8be1812bd",
         x86_64_linux: "3a1ea99e4a806a5bab7fad7ea6744d467275fa13fce2247161808a2b430e78aa"

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
