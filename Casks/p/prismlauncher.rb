cask "prismlauncher" do
  version "7.2"

  on_mojave :or_older do
    sha256 "4f7f8737dae851a5f9119d4d4ea5d46e8b24689fd57cde911711b414a6194618"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-Legacy-#{version}.tar.gz",
        verified: "github.com/PrismLauncher/PrismLauncher/"
  end
  on_catalina :or_newer do
    sha256 "152ebe468edbf36340952213a7721241efcdf438c48b794005acef9fe79947f9"

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
