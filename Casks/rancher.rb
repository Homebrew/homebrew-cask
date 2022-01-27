cask "rancher" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.0.0"

  if Hardware::CPU.intel?
    sha256 "835355c1e8338a9661b38cac4bca1664e116994f7a2c9e67118ad8947dfd3ce8"
  else
    sha256 "eecd25ff4e1f3dfa9db3c9940d280f04c2bafe1f11d3b9c30a6de4efe622facf"
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
