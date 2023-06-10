cask "prismlauncher" do
  version "7.0"

  on_mojave :or_older do
    sha256 "bfa24d9332f4824764bd59b1e4f738f628b467c0af407ab91baf659caa62222c"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-Legacy-#{version}.tar.gz",
        verified: "github.com/PrismLauncher/PrismLauncher/"
  end
  on_catalina :or_newer do
    sha256 "93460deafa31fced022f29547aad17c01560bbc2233b36b3a6421fd73c26512b"

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
