cask "rancher" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.0.1"

  if Hardware::CPU.intel?
    sha256 "01dcabe09dca068853da7a3966a6f9895fa7537eeef296f0363da64f42ad78fc"
  else
    sha256 "b5a3af6c95355efe05dcee8afbf57d8af170e1356d502b1bb9f2f3f58a2bd147"
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

  uninstall delete: [
    "/opt/rancher-desktop",
    "/private/etc/sudoers.d/zzzzz-rancher-desktop-lima", # zzzzz is not a typo
    "/private/var/run/docker.sock",
    "/private/var/run/rancher-desktop-lima",
    "/usr/local/bin/docker",
    "/usr/local/bin/helm",
    "/usr/local/bin/kubectl",
    "/usr/local/bin/nerdctl",
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
