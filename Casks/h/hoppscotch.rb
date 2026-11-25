cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.11.0-0"
  sha256 arm:          "2406ede18fc41d6004d4982e1cf16e5810276d486dabe2a014710e8ae5380acd",
         intel:        "16c2fb6ccfc44ff26870e0e960062592f80e41eb2f107924b3bdfc5abd058868",
         x86_64_linux: "d0f3581a7e110e861d77f7cfdf75fec8f7eb7df0f9f58ec5ef6cdbbfab486e90"

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
