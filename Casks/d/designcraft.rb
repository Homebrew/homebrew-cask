cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.0"
  sha256 arm:          "98b3a37c98be502488655d8e382dad1ea3cf81cdf3f78e1e69a6d1739457ae36",
         intel:        "98b3a37c98be502488655d8e382dad1ea3cf81cdf3f78e1e69a6d1739457ae36",
         arm64_linux:  "494cb3b69fbe0ef695673464781542baece8befe2c8d1df8ec500114931dc550",
         x86_64_linux: "7e246a6f793719c9818e9d1497efec5e22308c91e42ff3b1fe5f3667ae3a6b8c"

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
