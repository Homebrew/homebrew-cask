cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.11.0-0"
  sha256 arm:          "886d70b2f3d130b2ee1018042f41d22ea4a4e6aaaaccba177d641993a33f66f1",
         intel:        "fc747043b50322057e2533b4843b076985f0d5275d0d3e323489eb1c505dcc73",
         x86_64_linux: "1b393e3a09ed94deeeda7cea37952baccf66b27d40e91ad624f30a09b217f78d"

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
