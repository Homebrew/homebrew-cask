cask "prismlauncher" do
  version "6.2"

  on_mojave :or_older do
    sha256 "c6c2b68d2210d672eb2042b23814e79405300770a15c5c18eeaf7dbdb86ed6ce"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-Legacy-#{version}.tar.gz",
        verified: "github.com/PrismLauncher/PrismLauncher"
  end
  on_catalina :or_newer do
    sha256 "acec6b30fbf507421f034a9a3d69d516f5cf714c6729315f72f2e30777e7bc56"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.tar.gz",
        verified: "github.com/PrismLauncher/PrismLauncher"
  end

  name "Prism Launcher"
  desc "Minecraft launcher"
  homepage "https://prismlauncher.org/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prism Launcher.app"

  zap trash: [
    "~/Library/Application Support/PrismLauncher/metacache",
    "~/Library/Application Support/PrismLauncher/PrismLauncher-*.log",
    "~/Library/Application Support/PrismLauncher/prismlauncher.cfg",
    "~/Library/Preferences/org.prismlauncher.PrismLauncher.plist",
    "~/Library/Saved Application State/org.prismlauncher.PrismLauncher.savedState",
  ]
end
