cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.10.1-0"
  sha256 arm:          "ffe839370ea8164200e076728eafcb65a6a682f39efcb1885f52a8c4b1bb4493",
         intel:        "9db26c4c0be6a285d69f31e23ff34372238462c419df2399cb287626f40bc974",
         x86_64_linux: "1720195a12ff008efc3184aeb351b09edb60e958feb5cca65fb40588ec9a2d86"

  on_macos do
    app "Hoppscotch.app"

    uninstall quit: "io.hoppscotch.desktop"

    zap trash: [
      "~/Library/Application Support/io.hoppscotch.desktop",
      "~/Library/Caches/io.hoppscotch.desktop",
      "~/Library/Logs/io.hoppscotch.desktop",
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
