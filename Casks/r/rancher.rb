cask "rancher" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.22.3"
  sha256 arm:   "65d474a00b9da95b9f48c64b89acf3d1f397f68b6d47bfe10373587d5d510b67",
         intel: "8068087edc44a1bb7a45a65423c2b07a16be1c111ca50f550bab052198e62150"

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
  depends_on macos: :monterey

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
