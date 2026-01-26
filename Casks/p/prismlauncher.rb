cask "prismlauncher" do
  on_catalina :or_older do
    version "9.4"
    sha256 "ad5e4d12d91631e4aeec69499e244b0c6fc255d9abe3e26f4f45571a6736206c"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-Legacy-#{version}.zip",
        verified: "github.com/PrismLauncher/PrismLauncher/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "9.4"
    sha256 "5cc0148e427d28c632978a9e83e2da3fc02f5072990d9e7732dff3fdb1912ae4"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.zip",
        verified: "github.com/PrismLauncher/PrismLauncher/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "10.0.2"
    sha256 "e3b988b56246d733d0d13ee6ad046e5e6def71d017ee381707b1d7f92aff3794"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.zip",
        verified: "github.com/PrismLauncher/PrismLauncher/"

    livecheck do
      url "https://prismlauncher.org/feed/appcast.xml"
      strategy :sparkle
    end
  end

  name "Prism Launcher"
  desc "Minecraft launcher"
  homepage "https://prismlauncher.org/"

  auto_updates true

  app "Prism Launcher.app"
  binary "#{appdir}/Prism Launcher.app/Contents/MacOS/prismlauncher"

  zap trash: [
    "~/Library/Application Support/PrismLauncher/metacache",
    "~/Library/Application Support/PrismLauncher/PrismLauncher-*.log",
    "~/Library/Application Support/PrismLauncher/prismlauncher.cfg",
    "~/Library/Preferences/org.prismlauncher.PrismLauncher.plist",
    "~/Library/Saved Application State/org.prismlauncher.PrismLauncher.savedState",
  ]
end
