cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.2"
  sha256 arm:          "efd30a64b36bf02cff8687aa234569217bf0936187dc81717e22f04ca5c24b9d",
         intel:        "efd30a64b36bf02cff8687aa234569217bf0936187dc81717e22f04ca5c24b9d",
         arm64_linux:  "eb5f12fc228d38c1aca7d2d579b715288509cf51e57d0ca88873ef1212a741e3",
         x86_64_linux: "6d46e10f8e7c2746b6daa4c565c6c6a85329c1e6192e0aa0bbf526ba91a3efa0"

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
