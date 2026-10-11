cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.6.0"
  sha256 arm:          "e1d520e229aff1959b5cef7abfdbfa48ba3caccdf81bf77d01a59cf35855318a",
         intel:        "e1d520e229aff1959b5cef7abfdbfa48ba3caccdf81bf77d01a59cf35855318a",
         arm64_linux:  "8ce48f480e6cf8839bb222671c63fdbc18417722b32511d60ea6f5f16dad01d0",
         x86_64_linux: "fb62e7e7a9adee2fd7f400b2ba26093b96a803470a7d8d476e39196f05c4c034"

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
