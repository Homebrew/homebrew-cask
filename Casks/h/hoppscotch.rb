cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.8.2-0"
  sha256 arm:          "f307364a41e5becb3d93e6a007f24a7c5fed0073f12d569bea67885ec9447aab",
         intel:        "82f2e91d8db32340a98fc6f1cf76d2a73f3a6ba37ca33d6b7bfb14d89d0033c4",
         x86_64_linux: "a41b794bef1576a8a9991c0e190bab1e9660e6e1efd0c261d066eecc11434e38"

  on_macos do
    app "Hoppscotch.app"

    uninstall quit: "io.hoppscotch.desktop"

    zap trash: [
      "~/Library/Application Support/io.hoppscotch.desktop",
      "~/Library/Caches/io.hoppscotch.desktop",
      "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
      "~/Library/WebKit/io.hoppscotch.desktop",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Hoppscotch_linux_x64.AppImage", target: "Hoppscotch.AppImage"

    zap trash: [
      "~/.cache/io.hoppscotch.desktop",
      "~/.config/io.hoppscotch.desktop",
      "~/.local/share/io.hoppscotch.desktop",
    ]
  end

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_#{os}_#{arch}.#{url_end}"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
end
