cask "rancher" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.22.0"
  sha256 arm:   "474f2f625777f0a7e1bfea5f3b814fef664181a20450a85fbf0e0e92bd2b8323",
         intel: "908bce3c47e725112c25bc816485c8b9e8665911f4f98dc4bd7427dab3f043fc"

  url "https://github.com/rancher-sandbox/rancher-desktop/releases/download/v#{version}/Rancher.Desktop-#{version}.#{arch}.dmg",
      verified: "github.com/rancher-sandbox/rancher-desktop/"
  name "Rancher Desktop"
  desc "Kubernetes and container management on the desktop"
  homepage "https://rancherdesktop.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "docker-desktop"
  depends_on macos: ">= :monterey"

  app "Rancher Desktop.app"

  uninstall quit:   "io.rancherdesktop.app",
            delete: [
              "/opt/rancher-desktop",
              "/private/etc/sudoers.d/zzzzz-rancher-desktop-lima", # zzzzz is not a typo
              "/private/var/run/docker.sock",
              "/private/var/run/rancher-desktop-*",
            ]

  zap trash: [
    "~/.kuberlr",
    "~/.rd",
    "~/Library/Application Support/Caches/rancher-desktop-updater",
    "~/Library/Application Support/Rancher Desktop",
    "~/Library/Application Support/rancher-desktop",
    "~/Library/Caches/io.rancherdesktop.app*",
    "~/Library/Caches/rancher-desktop",
    "~/Library/Logs/rancher-desktop",
    "~/Library/Preferences/ByHost/io.rancherdesktop.app*",
    "~/Library/Preferences/io.rancherdesktop.app.plist",
    "~/Library/Preferences/rancher-desktop",
    "~/Library/Saved Application State/io.rancherdesktop.app.savedState",
  ]
end
