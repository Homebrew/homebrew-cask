cask "rancher" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.7.1"

  if Hardware::CPU.intel?
    sha256 "2f2e9c0ee43fb6a3752d9244c32249714e91f638136c54184430e1c217356fe6"
  else
    sha256 "76fad627e3bab036904471735b9f5c402eabde6f70a0c8428a77d6ca6ccd803f"
  end

  url "https://github.com/rancher-sandbox/rancher-desktop/releases/download/v#{version}/Rancher.Desktop-#{version}.#{arch}.dmg",
      verified: "github.com/rancher-sandbox/rancher-desktop/"
  name "Rancher Desktop"
  desc "Kubernetes and container management on the desktop"
  homepage "https://rancherdesktop.io/"

  auto_updates true
  conflicts_with cask:    %w[
    docker
  ],
                 formula: %w[
                   docker
                   helm
                   kubernetes-cli
                 ]

  app "Rancher Desktop.app"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/docker"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/helm"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/kim"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/kubectl"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/nerdctl"

  uninstall delete: [
    "/opt/rancher-desktop",
    "/private/etc/sudoers.d/rancher-desktop-lima",
    "/private/var/run/docker.sock",
    "/private/var/run/rancher-desktop-lima",
  ],
            quit:   "io.rancherdesktop.app"

  zap trash: [
    "~/.kuberlr",
    "~/Library/Application Support/Caches/rancher-desktop-updater",
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
