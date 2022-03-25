cask "rancher" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.2.0"

  if Hardware::CPU.intel?
    sha256 "49547c2c40fb67df4d8fdc094905e4b608c4939e3f9fc9381d0f2971751926e6"
  else
    sha256 "070731bdad58e94c269a48dce461f3c7cdfdb003633100ecc3573e7b803d9161"
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
    "/private/var/run/rancher-desktop-*",
    "/usr/local/bin/docker",
    "/usr/local/bin/helm",
    "/usr/local/bin/kubectl",
    "/usr/local/bin/nerdctl",
    "/usr/local/bin/rdctl",
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
