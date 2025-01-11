cask "prismlauncher" do
  version "9.2"

  on_mojave :or_older do
    sha256 "324b0bf66d18d9dbf563e9859dd12ae1e5f2041b63b620afa0cd2b0f60b4255b"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-Legacy-#{version}.zip",
        verified: "github.com/PrismLauncher/PrismLauncher/"
  end
  on_catalina :or_newer do
    sha256 "637901e5244ca55411f3d106949b265f23858ca58e1942c60a4ac484d9f1c316"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.zip",
        verified: "github.com/PrismLauncher/PrismLauncher/"
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
