cask "prismlauncher" do
  version "9.4"

  on_catalina :or_older do
    sha256 "ad5e4d12d91631e4aeec69499e244b0c6fc255d9abe3e26f4f45571a6736206c"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-Legacy-#{version}.zip",
        verified: "github.com/PrismLauncher/PrismLauncher/"
  end
  on_big_sur :or_newer do
    sha256 "5cc0148e427d28c632978a9e83e2da3fc02f5072990d9e7732dff3fdb1912ae4"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.zip",
        verified: "github.com/PrismLauncher/PrismLauncher/"
  end

  name "Prism Launcher"
  desc "Minecraft launcher"
  homepage "https://prismlauncher.org/"

  livecheck do
    url "https://prismlauncher.org/feed/appcast.xml"
    strategy :sparkle
  end

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
