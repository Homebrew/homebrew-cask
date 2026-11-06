cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.0"
  sha256 arm:          "c997734f8b736518520ef3a4b319ad25c40cf03a0747b9e3dab6ef1017a9699a",
         intel:        "c997734f8b736518520ef3a4b319ad25c40cf03a0747b9e3dab6ef1017a9699a",
         arm64_linux:  "2b70a7549e9bf58c6333af1493f7072fab8c858c0912f85fc9b01369464136a2",
         x86_64_linux: "2378fcbacd10a3168cb8072728110467fd463e4b09f14a0d120fbc24f036b367"

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
