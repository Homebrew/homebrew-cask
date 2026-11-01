cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"
  sha256 arm:          "656a4dbe34edabe478f6ba1c838f718ea67e5ca7c61c1591c7be08dc3621a14b",
         intel:        "656a4dbe34edabe478f6ba1c838f718ea67e5ca7c61c1591c7be08dc3621a14b",
         arm64_linux:  "c3f0aca29e12fc67be3c3fe222739a2514795db925bff95ebc5f450e3950aedf",
         x86_64_linux: "e592a27a94ad20a0a0baee7893e92d9079ec412495f987a9c0854b99ec00b21b"

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
