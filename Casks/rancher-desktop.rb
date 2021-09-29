cask "rancher-desktop" do
  version "0.5.0"
  sha256 "0ebdfb3e070e1c525a08730ccea761a040d366fa800c735870ff328080f8fa55"

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
    "~/Library/Application Support/rancher-desktop",
    "~/Library/Caches/rancher-desktop",
    "~/Library/Logs/rancher-desktop",
    "~/Library/Preferences/io.rancherdesktop.app.plist",
    "~/Library/Preferences/rancher-desktop",
    "~/Library/Saved Application State/io.rancherdesktop.app.savedState",
  ]
end
