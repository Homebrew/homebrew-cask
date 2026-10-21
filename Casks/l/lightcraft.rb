cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "d8efbec50b8029b1f19acdd1b2efb8c023e884e021bc7d8520941f1ecd15a58b",
         intel:        "d8efbec50b8029b1f19acdd1b2efb8c023e884e021bc7d8520941f1ecd15a58b",
         arm64_linux:  "5fdc379a0ae27154f60910310e358fbe966f4209bf1d3ee8b59e215018708db5",
         x86_64_linux: "1092d748ef5f89f98c59805966700cc2d1e8d795e89321e2a5d1f52037a17f40"

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
