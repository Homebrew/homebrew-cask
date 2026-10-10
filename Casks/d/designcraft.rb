cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.0"
  sha256 arm:          "8af67201c8d2c5493c76aaf0357e16bce3bc2aa0454d64439f29fc4a9a55a725",
         intel:        "8af67201c8d2c5493c76aaf0357e16bce3bc2aa0454d64439f29fc4a9a55a725",
         arm64_linux:  "2820fee6b87ce724a88bb1637a54974d2be211dd48302923f3007900dac8b93a",
         x86_64_linux: "87b620db03fb245b5f49f99111ca1b634e3f626ed1dfc397e9963088cd0414a7"

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
