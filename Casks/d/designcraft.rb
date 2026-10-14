cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.8.0"
  sha256 arm:          "10b1035af24dbf1d760223e9d932dea8f9235a63395e0fc1b4fa61d631688cf7",
         intel:        "10b1035af24dbf1d760223e9d932dea8f9235a63395e0fc1b4fa61d631688cf7",
         arm64_linux:  "6ffff5e6dfad31459e7f3c97be110ed21c069cb60203870de7a52746d4e70a6d",
         x86_64_linux: "88d57710f56c9fb7d8e33e046061eff839117971b402a4103c4b332b5ca3b5df"

  on_macos do
    app "DesignCraft.app"

    zap trash: "~/Library/Application Support/DesignCraft"
  end
  on_linux do
    app_image "designcraft-#{version}-linux-#{arch}.AppImage", target: "DesignCraft.AppImage"

    zap trash: [
      "~/.config/designcraft",
      "~/.local/share/designcraft",
    ]
  end

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "DesignCraft"
  desc "Page layout and publishing tool"
  homepage "https://getartcraft.com/apps/designcraft"
end
