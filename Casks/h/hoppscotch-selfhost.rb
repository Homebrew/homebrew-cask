cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.8.2-0"
  sha256 arm:          "12529633e68a331e6a17bbebc047e6ce9f7438e0ecd2d3a5e16c235e74723bd9",
         intel:        "c65d14acd6a6d207c77e94ad04aebd214f39131413b2e43c71b21d8a60900626",
         x86_64_linux: "21320818df140b8cf4d4363b55e4f272b4b7f694152ebabc8935b1730fe3e4cc"

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

    app_image "Hoppscotch_SelfHost_linux_#{arch}.AppImage", target: "Hoppscotch SelfHost.AppImage"

    zap trash: [
      "~/.cache/io.hoppscotch.desktop",
      "~/.config/io.hoppscotch.desktop",
      "~/.local/share/io.hoppscotch.desktop",
    ]
  end

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_#{os}_#{arch}.#{url_end}"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"
end
