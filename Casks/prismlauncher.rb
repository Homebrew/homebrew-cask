cask "prismlauncher" do
  version "7.1"

  on_mojave :or_older do
    sha256 "b81ee66ce31eccab7887c372140838ef3437ccc256e514f9c69c6255f389b485"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-Legacy-#{version}.tar.gz",
        verified: "github.com/PrismLauncher/PrismLauncher/"
  end
  on_catalina :or_newer do
    sha256 "676d0fa10a9a07df152f904bc8515e04c20e4b9d3efd419eed2c92afdd0f9b2c"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.tar.gz",
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
