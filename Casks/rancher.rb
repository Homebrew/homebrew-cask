cask "rancher" do
  version "0.6.1"
  sha256 "181b46b6da8906e8bbbe0bc67e962a44b5abc13aa4b9bea54a0fbc9520795649"

  url "https://github.com/rancher-sandbox/rancher-desktop/releases/download/v#{version}/Rancher.Desktop-#{version}.dmg",
      verified: "github.com/rancher-sandbox/rancher-desktop/"
  name "Rancher Desktop"
  desc "Kubernetes and container management on the desktop"
  homepage "https://rancherdesktop.io/"

  auto_updates true
  conflicts_with formula: %w[
    helm
    kubernetes-cli
  ]

  app "Rancher Desktop.app"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/helm"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/kim"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/kubectl"
  binary "#{appdir}/Rancher Desktop.app/Contents/Resources/resources/darwin/bin/nerdctl"

  uninstall quit: "io.rancherdesktop.app"

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
