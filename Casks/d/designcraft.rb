cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.0"
  sha256 arm:          "6c46a54bf0b990fcfa81ea3849bad5b673a53ede06a9580cc3fc1cdfe82da5ae",
         intel:        "6c46a54bf0b990fcfa81ea3849bad5b673a53ede06a9580cc3fc1cdfe82da5ae",
         arm64_linux:  "9091c2dcb6ec9e083892941761e4d7c2dd62b1dc0a5903e2310f17edfa8112d1",
         x86_64_linux: "bfd27f59e0a7e9b8d40fc64aa60b6fdd91269987623226f759afd4d7cbc64fbe"

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
